; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_ea.c_hpfs_get_ea.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_ea.c_hpfs_get_ea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fnode = type { i32, i32, i32 }
%struct.extended_attribute = type { i32, i32, i32, i64, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"HPFS: out of memory for EA\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"EAs don't end correctly, %s %08x, len %08x\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"anode\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"sectors\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hpfs_get_ea(%struct.super_block* %0, %struct.fnode* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.fnode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.extended_attribute*, align 8
  %16 = alloca %struct.extended_attribute*, align 8
  %17 = alloca [268 x i8], align 16
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.fnode* %1, %struct.fnode** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.fnode*, %struct.fnode** %7, align 8
  %19 = call %struct.extended_attribute* @fnode_end_ea(%struct.fnode* %18)
  store %struct.extended_attribute* %19, %struct.extended_attribute** %16, align 8
  %20 = load %struct.fnode*, %struct.fnode** %7, align 8
  %21 = call %struct.extended_attribute* @fnode_ea(%struct.fnode* %20)
  store %struct.extended_attribute* %21, %struct.extended_attribute** %15, align 8
  br label %22

22:                                               ; preds = %76, %4
  %23 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %24 = load %struct.extended_attribute*, %struct.extended_attribute** %16, align 8
  %25 = icmp ult %struct.extended_attribute* %23, %24
  br i1 %25, label %26, label %79

26:                                               ; preds = %22
  %27 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %28 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @strcmp(i32 %29, i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %75, label %33

33:                                               ; preds = %26
  %34 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %35 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load %struct.super_block*, %struct.super_block** %6, align 8
  %40 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %41 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %44 = call i32 @ea_sec(%struct.extended_attribute* %43)
  %45 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %46 = call i32 @ea_len(%struct.extended_attribute* %45)
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  %48 = call i8* @get_indirect_ea(%struct.super_block* %39, i32 %42, i32 %44, i32 %46)
  store i8* %48, i8** %5, align 8
  br label %214

49:                                               ; preds = %33
  %50 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %51 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  %54 = add nsw i32 %52, 1
  %55 = load i32, i32* @GFP_NOFS, align 4
  %56 = call i8* @kmalloc(i32 %54, i32 %55)
  store i8* %56, i8** %10, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %49
  %59 = call i32 @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %5, align 8
  br label %214

60:                                               ; preds = %49
  %61 = load i8*, i8** %10, align 8
  %62 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %63 = call i32 @ea_data(%struct.extended_attribute* %62)
  %64 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %65 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @memcpy(i8* %61, i32 %63, i32 %66)
  %68 = load i8*, i8** %10, align 8
  %69 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %70 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %68, i64 %72
  store i8 0, i8* %73, align 1
  %74 = load i8*, i8** %10, align 8
  store i8* %74, i8** %5, align 8
  br label %214

75:                                               ; preds = %26
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %78 = call %struct.extended_attribute* @next_ea(%struct.extended_attribute* %77)
  store %struct.extended_attribute* %78, %struct.extended_attribute** %15, align 8
  br label %22

79:                                               ; preds = %22
  %80 = load %struct.fnode*, %struct.fnode** %7, align 8
  %81 = getelementptr inbounds %struct.fnode, %struct.fnode* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %14, align 4
  %83 = load %struct.fnode*, %struct.fnode** %7, align 8
  %84 = getelementptr inbounds %struct.fnode, %struct.fnode* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %13, align 4
  %86 = load %struct.fnode*, %struct.fnode** %7, align 8
  %87 = getelementptr inbounds %struct.fnode, %struct.fnode* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %202, %79
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %93, label %213

93:                                               ; preds = %89
  %94 = getelementptr inbounds [268 x i8], [268 x i8]* %17, i64 0, i64 0
  %95 = bitcast i8* %94 to %struct.extended_attribute*
  store %struct.extended_attribute* %95, %struct.extended_attribute** %15, align 8
  %96 = load i32, i32* %11, align 4
  %97 = add i32 %96, 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp ugt i32 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %93
  %101 = load %struct.super_block*, %struct.super_block** %6, align 8
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %13, align 4
  %108 = call i32 @hpfs_error(%struct.super_block* %101, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %105, i32 %106, i32 %107)
  store i8* null, i8** %5, align 8
  br label %214

109:                                              ; preds = %93
  %110 = load %struct.super_block*, %struct.super_block** %6, align 8
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %11, align 4
  %114 = getelementptr inbounds [268 x i8], [268 x i8]* %17, i64 0, i64 0
  %115 = call i64 @hpfs_ea_read(%struct.super_block* %110, i32 %111, i32 %112, i32 %113, i32 4, i8* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  store i8* null, i8** %5, align 8
  br label %214

118:                                              ; preds = %109
  %119 = load %struct.super_block*, %struct.super_block** %6, align 8
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %11, align 4
  %123 = add i32 %122, 4
  %124 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %125 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  %128 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %129 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i32 8, i32 0
  %134 = add nsw i32 %127, %133
  %135 = getelementptr inbounds [268 x i8], [268 x i8]* %17, i64 0, i64 0
  %136 = getelementptr inbounds i8, i8* %135, i64 4
  %137 = call i64 @hpfs_ea_read(%struct.super_block* %119, i32 %120, i32 %121, i32 %123, i32 %134, i8* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %118
  store i8* null, i8** %5, align 8
  br label %214

140:                                              ; preds = %118
  %141 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %142 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = load i8*, i8** %8, align 8
  %145 = call i32 @strcmp(i32 %143, i8* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %202, label %147

147:                                              ; preds = %140
  %148 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %149 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %147
  %153 = load %struct.super_block*, %struct.super_block** %6, align 8
  %154 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %155 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %158 = call i32 @ea_sec(%struct.extended_attribute* %157)
  %159 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %160 = call i32 @ea_len(%struct.extended_attribute* %159)
  %161 = load i32*, i32** %9, align 8
  store i32 %160, i32* %161, align 4
  %162 = call i8* @get_indirect_ea(%struct.super_block* %153, i32 %156, i32 %158, i32 %160)
  store i8* %162, i8** %5, align 8
  br label %214

163:                                              ; preds = %147
  %164 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %165 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32*, i32** %9, align 8
  store i32 %166, i32* %167, align 4
  %168 = add nsw i32 %166, 1
  %169 = load i32, i32* @GFP_NOFS, align 4
  %170 = call i8* @kmalloc(i32 %168, i32 %169)
  store i8* %170, i8** %10, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %174, label %172

172:                                              ; preds = %163
  %173 = call i32 @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %5, align 8
  br label %214

174:                                              ; preds = %163
  %175 = load %struct.super_block*, %struct.super_block** %6, align 8
  %176 = load i32, i32* %14, align 4
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* %11, align 4
  %179 = add i32 %178, 4
  %180 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %181 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = add i32 %179, %182
  %184 = add i32 %183, 1
  %185 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %186 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i8*, i8** %10, align 8
  %189 = call i64 @hpfs_ea_read(%struct.super_block* %175, i32 %176, i32 %177, i32 %184, i32 %187, i8* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %174
  %192 = load i8*, i8** %10, align 8
  %193 = call i32 @kfree(i8* %192)
  store i8* null, i8** %5, align 8
  br label %214

194:                                              ; preds = %174
  %195 = load i8*, i8** %10, align 8
  %196 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %197 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %195, i64 %199
  store i8 0, i8* %200, align 1
  %201 = load i8*, i8** %10, align 8
  store i8* %201, i8** %5, align 8
  br label %214

202:                                              ; preds = %140
  %203 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %204 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.extended_attribute*, %struct.extended_attribute** %15, align 8
  %207 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = add nsw i32 %205, %208
  %210 = add nsw i32 %209, 5
  %211 = load i32, i32* %11, align 4
  %212 = add i32 %211, %210
  store i32 %212, i32* %11, align 4
  br label %89

213:                                              ; preds = %89
  store i8* null, i8** %5, align 8
  br label %214

214:                                              ; preds = %213, %194, %191, %172, %152, %139, %117, %100, %60, %58, %38
  %215 = load i8*, i8** %5, align 8
  ret i8* %215
}

declare dso_local %struct.extended_attribute* @fnode_end_ea(%struct.fnode*) #1

declare dso_local %struct.extended_attribute* @fnode_ea(%struct.fnode*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i8* @get_indirect_ea(%struct.super_block*, i32, i32, i32) #1

declare dso_local i32 @ea_sec(%struct.extended_attribute*) #1

declare dso_local i32 @ea_len(%struct.extended_attribute*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @ea_data(%struct.extended_attribute*) #1

declare dso_local %struct.extended_attribute* @next_ea(%struct.extended_attribute*) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i8*, i32, i32) #1

declare dso_local i64 @hpfs_ea_read(%struct.super_block*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
