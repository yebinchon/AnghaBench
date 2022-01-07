; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_ea.c_hpfs_read_ea.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_ea.c_hpfs_read_ea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fnode = type { i32, i32, i32 }
%struct.extended_attribute = type { i32, i32, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"EAs don't end correctly, %s %08x, len %08x\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"anode\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"sectors\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpfs_read_ea(%struct.super_block* %0, %struct.fnode* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.fnode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.extended_attribute*, align 8
  %17 = alloca %struct.extended_attribute*, align 8
  %18 = alloca [268 x i8], align 16
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store %struct.fnode* %1, %struct.fnode** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.fnode*, %struct.fnode** %8, align 8
  %20 = call %struct.extended_attribute* @fnode_end_ea(%struct.fnode* %19)
  store %struct.extended_attribute* %20, %struct.extended_attribute** %17, align 8
  %21 = load %struct.fnode*, %struct.fnode** %8, align 8
  %22 = call %struct.extended_attribute* @fnode_ea(%struct.fnode* %21)
  store %struct.extended_attribute* %22, %struct.extended_attribute** %16, align 8
  br label %23

23:                                               ; preds = %64, %5
  %24 = load %struct.extended_attribute*, %struct.extended_attribute** %16, align 8
  %25 = load %struct.extended_attribute*, %struct.extended_attribute** %17, align 8
  %26 = icmp ult %struct.extended_attribute* %24, %25
  br i1 %26, label %27, label %67

27:                                               ; preds = %23
  %28 = load %struct.extended_attribute*, %struct.extended_attribute** %16, align 8
  %29 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @strcmp(i32 %30, i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %63, label %34

34:                                               ; preds = %27
  %35 = load %struct.extended_attribute*, %struct.extended_attribute** %16, align 8
  %36 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %199

40:                                               ; preds = %34
  %41 = load %struct.extended_attribute*, %struct.extended_attribute** %16, align 8
  %42 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %228

49:                                               ; preds = %40
  %50 = load i8*, i8** %10, align 8
  %51 = load %struct.extended_attribute*, %struct.extended_attribute** %16, align 8
  %52 = call i32 @ea_data(%struct.extended_attribute* %51)
  %53 = load %struct.extended_attribute*, %struct.extended_attribute** %16, align 8
  %54 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @memcpy(i8* %50, i32 %52, i32 %55)
  %57 = load i8*, i8** %10, align 8
  %58 = load %struct.extended_attribute*, %struct.extended_attribute** %16, align 8
  %59 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %57, i64 %61
  store i8 0, i8* %62, align 1
  store i32 0, i32* %6, align 4
  br label %228

63:                                               ; preds = %27
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.extended_attribute*, %struct.extended_attribute** %16, align 8
  %66 = call %struct.extended_attribute* @next_ea(%struct.extended_attribute* %65)
  store %struct.extended_attribute* %66, %struct.extended_attribute** %16, align 8
  br label %23

67:                                               ; preds = %23
  %68 = load %struct.fnode*, %struct.fnode** %8, align 8
  %69 = getelementptr inbounds %struct.fnode, %struct.fnode* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %15, align 4
  %71 = load %struct.fnode*, %struct.fnode** %8, align 8
  %72 = getelementptr inbounds %struct.fnode, %struct.fnode* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %14, align 4
  %74 = load %struct.fnode*, %struct.fnode** %8, align 8
  %75 = getelementptr inbounds %struct.fnode, %struct.fnode* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %185, %67
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %196

81:                                               ; preds = %77
  %82 = getelementptr inbounds [268 x i8], [268 x i8]* %18, i64 0, i64 0
  %83 = bitcast i8* %82 to %struct.extended_attribute*
  store %struct.extended_attribute* %83, %struct.extended_attribute** %16, align 8
  %84 = load i32, i32* %12, align 4
  %85 = add i32 %84, 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp ugt i32 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %81
  %89 = load %struct.super_block*, %struct.super_block** %7, align 8
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @hpfs_error(%struct.super_block* %89, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %93, i32 %94, i32 %95)
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %6, align 4
  br label %228

99:                                               ; preds = %81
  %100 = load %struct.super_block*, %struct.super_block** %7, align 8
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %12, align 4
  %104 = getelementptr inbounds [268 x i8], [268 x i8]* %18, i64 0, i64 0
  %105 = call i64 @hpfs_ea_read(%struct.super_block* %100, i32 %101, i32 %102, i32 %103, i64 4, i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = load i32, i32* @EIO, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %6, align 4
  br label %228

110:                                              ; preds = %99
  %111 = load %struct.super_block*, %struct.super_block** %7, align 8
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %12, align 4
  %115 = add i32 %114, 4
  %116 = load %struct.extended_attribute*, %struct.extended_attribute** %16, align 8
  %117 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  %120 = load %struct.extended_attribute*, %struct.extended_attribute** %16, align 8
  %121 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i32 8, i32 0
  %126 = add nsw i32 %119, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [268 x i8], [268 x i8]* %18, i64 0, i64 0
  %129 = getelementptr inbounds i8, i8* %128, i64 4
  %130 = call i64 @hpfs_ea_read(%struct.super_block* %111, i32 %112, i32 %113, i32 %115, i64 %127, i8* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %110
  %133 = load i32, i32* @EIO, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %6, align 4
  br label %228

135:                                              ; preds = %110
  %136 = load %struct.extended_attribute*, %struct.extended_attribute** %16, align 8
  %137 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = load i8*, i8** %9, align 8
  %140 = call i32 @strcmp(i32 %138, i8* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %185, label %142

142:                                              ; preds = %135
  %143 = load %struct.extended_attribute*, %struct.extended_attribute** %16, align 8
  %144 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  br label %199

148:                                              ; preds = %142
  %149 = load %struct.extended_attribute*, %struct.extended_attribute** %16, align 8
  %150 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %11, align 4
  %153 = icmp sge i32 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %148
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %6, align 4
  br label %228

157:                                              ; preds = %148
  %158 = load %struct.super_block*, %struct.super_block** %7, align 8
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* %12, align 4
  %162 = add i32 %161, 4
  %163 = load %struct.extended_attribute*, %struct.extended_attribute** %16, align 8
  %164 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = add i32 %162, %165
  %167 = add i32 %166, 1
  %168 = load %struct.extended_attribute*, %struct.extended_attribute** %16, align 8
  %169 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = load i8*, i8** %10, align 8
  %173 = call i64 @hpfs_ea_read(%struct.super_block* %158, i32 %159, i32 %160, i32 %167, i64 %171, i8* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %157
  %176 = load i32, i32* @EIO, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %6, align 4
  br label %228

178:                                              ; preds = %157
  %179 = load i8*, i8** %10, align 8
  %180 = load %struct.extended_attribute*, %struct.extended_attribute** %16, align 8
  %181 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %179, i64 %183
  store i8 0, i8* %184, align 1
  store i32 0, i32* %6, align 4
  br label %228

185:                                              ; preds = %135
  %186 = load %struct.extended_attribute*, %struct.extended_attribute** %16, align 8
  %187 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.extended_attribute*, %struct.extended_attribute** %16, align 8
  %190 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %188, %191
  %193 = add nsw i32 %192, 5
  %194 = load i32, i32* %12, align 4
  %195 = add i32 %194, %193
  store i32 %195, i32* %12, align 4
  br label %77

196:                                              ; preds = %77
  %197 = load i32, i32* @ENOENT, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %6, align 4
  br label %228

199:                                              ; preds = %147, %39
  %200 = load %struct.extended_attribute*, %struct.extended_attribute** %16, align 8
  %201 = call i64 @ea_len(%struct.extended_attribute* %200)
  %202 = load i32, i32* %11, align 4
  %203 = sext i32 %202 to i64
  %204 = icmp uge i64 %201, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %199
  %206 = load i32, i32* @EINVAL, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %6, align 4
  br label %228

208:                                              ; preds = %199
  %209 = load %struct.super_block*, %struct.super_block** %7, align 8
  %210 = load %struct.extended_attribute*, %struct.extended_attribute** %16, align 8
  %211 = call i32 @ea_sec(%struct.extended_attribute* %210)
  %212 = load %struct.extended_attribute*, %struct.extended_attribute** %16, align 8
  %213 = getelementptr inbounds %struct.extended_attribute, %struct.extended_attribute* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.extended_attribute*, %struct.extended_attribute** %16, align 8
  %216 = call i64 @ea_len(%struct.extended_attribute* %215)
  %217 = load i8*, i8** %10, align 8
  %218 = call i64 @hpfs_ea_read(%struct.super_block* %209, i32 %211, i32 %214, i32 0, i64 %216, i8* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %208
  %221 = load i32, i32* @EIO, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %6, align 4
  br label %228

223:                                              ; preds = %208
  %224 = load i8*, i8** %10, align 8
  %225 = load %struct.extended_attribute*, %struct.extended_attribute** %16, align 8
  %226 = call i64 @ea_len(%struct.extended_attribute* %225)
  %227 = getelementptr inbounds i8, i8* %224, i64 %226
  store i8 0, i8* %227, align 1
  store i32 0, i32* %6, align 4
  br label %228

228:                                              ; preds = %223, %220, %205, %196, %178, %175, %154, %132, %107, %88, %49, %46
  %229 = load i32, i32* %6, align 4
  ret i32 %229
}

declare dso_local %struct.extended_attribute* @fnode_end_ea(%struct.fnode*) #1

declare dso_local %struct.extended_attribute* @fnode_ea(%struct.fnode*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @ea_data(%struct.extended_attribute*) #1

declare dso_local %struct.extended_attribute* @next_ea(%struct.extended_attribute*) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i8*, i32, i32) #1

declare dso_local i64 @hpfs_ea_read(%struct.super_block*, i32, i32, i32, i64, i8*) #1

declare dso_local i64 @ea_len(%struct.extended_attribute*) #1

declare dso_local i32 @ea_sec(%struct.extended_attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
