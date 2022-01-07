; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_dir.c_build_path_from_dentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_dir.c_build_path_from_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.dentry*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cifs_sb_info = type { i32, i32, i32 }
%struct.cifs_tcon = type { i32, i32 }

@SMB_SHARE_IS_IN_DFS = common dso_local global i32 0, align 4
@MAX_TREE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"corrupt dentry\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"name: %s\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"did not end path lookup where expected namelen is %d\00", align 1
@CIFS_MOUNT_POSIX_PATHS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @build_path_from_dentry(%struct.dentry* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.cifs_sb_info*, align 8
  %11 = alloca %struct.cifs_tcon*, align 8
  %12 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %13 = load %struct.dentry*, %struct.dentry** %3, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.cifs_sb_info* @CIFS_SB(i32 %15)
  store %struct.cifs_sb_info* %16, %struct.cifs_sb_info** %10, align 8
  %17 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %18 = call %struct.cifs_tcon* @cifs_sb_master_tcon(%struct.cifs_sb_info* %17)
  store %struct.cifs_tcon* %18, %struct.cifs_tcon** %11, align 8
  %19 = load %struct.dentry*, %struct.dentry** %3, align 8
  %20 = icmp eq %struct.dentry* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %201

22:                                               ; preds = %1
  %23 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %24 = call signext i8 @CIFS_DIR_SEP(%struct.cifs_sb_info* %23)
  store i8 %24, i8* %9, align 1
  %25 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %26 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  %28 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %29 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SMB_SHARE_IS_IN_DFS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %22
  %35 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %36 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* @MAX_TREE_SIZE, align 8
  %39 = add nsw i64 %38, 1
  %40 = call i32 @strnlen(i32 %37, i64 %39)
  store i32 %40, i32* %7, align 4
  br label %42

41:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %34
  br label %43

43:                                               ; preds = %142, %42
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %5, align 4
  %47 = load %struct.dentry*, %struct.dentry** %3, align 8
  store %struct.dentry* %47, %struct.dentry** %4, align 8
  br label %48

48:                                               ; preds = %68, %43
  %49 = load %struct.dentry*, %struct.dentry** %4, align 8
  %50 = call i32 @IS_ROOT(%struct.dentry* %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br i1 %52, label %53, label %69

53:                                               ; preds = %48
  %54 = load %struct.dentry*, %struct.dentry** %4, align 8
  %55 = getelementptr inbounds %struct.dentry, %struct.dentry* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 1, %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %5, align 4
  %61 = load %struct.dentry*, %struct.dentry** %4, align 8
  %62 = getelementptr inbounds %struct.dentry, %struct.dentry* %61, i32 0, i32 1
  %63 = load %struct.dentry*, %struct.dentry** %62, align 8
  store %struct.dentry* %63, %struct.dentry** %4, align 8
  %64 = load %struct.dentry*, %struct.dentry** %4, align 8
  %65 = icmp eq %struct.dentry* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %53
  %67 = call i32 (i32, i8*, ...) @cERROR(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %201

68:                                               ; preds = %53
  br label %48

69:                                               ; preds = %48
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call i8* @kmalloc(i32 %71, i32 %72)
  store i8* %73, i8** %8, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i8*, i8** %8, align 8
  store i8* %77, i8** %2, align 8
  br label %201

78:                                               ; preds = %69
  %79 = load i8*, i8** %8, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  store i8 0, i8* %82, align 1
  %83 = load %struct.dentry*, %struct.dentry** %3, align 8
  store %struct.dentry* %83, %struct.dentry** %4, align 8
  br label %84

84:                                               ; preds = %135, %78
  %85 = load %struct.dentry*, %struct.dentry** %4, align 8
  %86 = call i32 @IS_ROOT(%struct.dentry* %85)
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  br i1 %88, label %89, label %136

89:                                               ; preds = %84
  %90 = load %struct.dentry*, %struct.dentry** %4, align 8
  %91 = getelementptr inbounds %struct.dentry, %struct.dentry* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 1, %93
  %95 = load i32, i32* %5, align 4
  %96 = sub nsw i32 %95, %94
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  br label %136

100:                                              ; preds = %89
  %101 = load i8, i8* %9, align 1
  %102 = load i8*, i8** %8, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  store i8 %101, i8* %105, align 1
  %106 = load i8*, i8** %8, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  %111 = load %struct.dentry*, %struct.dentry** %4, align 8
  %112 = getelementptr inbounds %struct.dentry, %struct.dentry* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.dentry*, %struct.dentry** %4, align 8
  %116 = getelementptr inbounds %struct.dentry, %struct.dentry* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @strncpy(i8* %110, i32 %114, i32 %118)
  %120 = load i8*, i8** %8, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  %124 = call i32 @cFYI(i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %123)
  br label %125

125:                                              ; preds = %100
  %126 = load %struct.dentry*, %struct.dentry** %4, align 8
  %127 = getelementptr inbounds %struct.dentry, %struct.dentry* %126, i32 0, i32 1
  %128 = load %struct.dentry*, %struct.dentry** %127, align 8
  store %struct.dentry* %128, %struct.dentry** %4, align 8
  %129 = load %struct.dentry*, %struct.dentry** %4, align 8
  %130 = icmp eq %struct.dentry* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = call i32 (i32, i8*, ...) @cERROR(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %133 = load i8*, i8** %8, align 8
  %134 = call i32 @kfree(i8* %133)
  store i8* null, i8** %2, align 8
  br label %201

135:                                              ; preds = %125
  br label %84

136:                                              ; preds = %99, %84
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %138, %139
  %141 = icmp ne i32 %137, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %136
  %143 = load i32, i32* %5, align 4
  %144 = call i32 (i32, i8*, ...) @cERROR(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %143)
  %145 = load i8*, i8** %8, align 8
  %146 = call i32 @kfree(i8* %145)
  br label %43

147:                                              ; preds = %136
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %187

150:                                              ; preds = %147
  %151 = load i8*, i8** %8, align 8
  %152 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %153 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @strncpy(i8* %151, i32 %154, i32 %155)
  %157 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %158 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @CIFS_MOUNT_POSIX_PATHS, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %186

163:                                              ; preds = %150
  store i32 0, i32* %12, align 4
  br label %164

164:                                              ; preds = %182, %163
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* %7, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %185

168:                                              ; preds = %164
  %169 = load i8*, i8** %8, align 8
  %170 = load i32, i32* %12, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %169, i64 %171
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %174, 92
  br i1 %175, label %176, label %181

176:                                              ; preds = %168
  %177 = load i8*, i8** %8, align 8
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  store i8 47, i8* %180, align 1
  br label %181

181:                                              ; preds = %176, %168
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %12, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %12, align 4
  br label %164

185:                                              ; preds = %164
  br label %186

186:                                              ; preds = %185, %150
  br label %187

187:                                              ; preds = %186, %147
  %188 = load i8*, i8** %8, align 8
  %189 = load i32, i32* %7, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  %192 = load %struct.dentry*, %struct.dentry** %3, align 8
  %193 = getelementptr inbounds %struct.dentry, %struct.dentry* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call %struct.cifs_sb_info* @CIFS_SB(i32 %194)
  %196 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %6, align 4
  %199 = call i32 @strncpy(i8* %191, i32 %197, i32 %198)
  %200 = load i8*, i8** %8, align 8
  store i8* %200, i8** %2, align 8
  br label %201

201:                                              ; preds = %187, %131, %76, %66, %21
  %202 = load i8*, i8** %2, align 8
  ret i8* %202
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local %struct.cifs_tcon* @cifs_sb_master_tcon(%struct.cifs_sb_info*) #1

declare dso_local signext i8 @CIFS_DIR_SEP(%struct.cifs_sb_info*) #1

declare dso_local i32 @strnlen(i32, i64) #1

declare dso_local i32 @IS_ROOT(%struct.dentry*) #1

declare dso_local i32 @cERROR(i32, i8*, ...) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @cFYI(i32, i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
