; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_binfmt_misc.c_load_misc_binary.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_binfmt_misc.c_load_misc_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_binprm = type { i32, i8*, i32, i32, %struct.file*, i32 }
%struct.file = type { i32 }
%struct.pt_regs = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@BINPRM_BUF_SIZE = common dso_local global i32 0, align 4
@ENOEXEC = common dso_local global i32 0, align 4
@enabled = common dso_local global i32 0, align 4
@entries_lock = common dso_local global i32 0, align 4
@MISC_FMT_PRESERVE_ARGV0 = common dso_local global i32 0, align 4
@MISC_FMT_OPEN_BINARY = common dso_local global i32 0, align 4
@MAY_READ = common dso_local global i32 0, align 4
@BINPRM_FLAGS_ENFORCE_NONDUMP = common dso_local global i32 0, align 4
@BINPRM_FLAGS_EXECFD = common dso_local global i32 0, align 4
@MISC_FMT_CREDENTIALS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.linux_binprm*, %struct.pt_regs*)* @load_misc_binary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_misc_binary(%struct.linux_binprm* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca %struct.linux_binprm*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.linux_binprm* %0, %struct.linux_binprm** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  store %struct.file* null, %struct.file** %6, align 8
  %12 = load i32, i32* @BINPRM_BUF_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  store i8* %15, i8** %9, align 8
  store i32 -1, i32* %11, align 4
  %16 = load i32, i32* @ENOEXEC, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* @enabled, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %184

21:                                               ; preds = %2
  %22 = call i32 @read_lock(i32* @entries_lock)
  %23 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %24 = call %struct.TYPE_3__* @check_file(%struct.linux_binprm* %23)
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %5, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @BINPRM_BUF_SIZE, align 4
  %32 = call i32 @strlcpy(i8* %15, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %27, %21
  %34 = call i32 @read_unlock(i32* @entries_lock)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = icmp ne %struct.TYPE_3__* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  br label %184

38:                                               ; preds = %33
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MISC_FMT_PRESERVE_ARGV0, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  %46 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %47 = call i32 @remove_arg_zero(%struct.linux_binprm* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %184

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %38
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MISC_FMT_OPEN_BINARY, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %98

59:                                               ; preds = %52
  %60 = call i32 (...) @get_unused_fd()
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %10, align 4
  br label %184

65:                                               ; preds = %59
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %68 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %67, i32 0, i32 4
  %69 = load %struct.file*, %struct.file** %68, align 8
  %70 = call i32 @fd_install(i32 %66, %struct.file* %69)
  %71 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %72 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %71, i32 0, i32 4
  %73 = load %struct.file*, %struct.file** %72, align 8
  %74 = load i32, i32* @MAY_READ, align 4
  %75 = call i64 @file_permission(%struct.file* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %65
  %78 = load i32, i32* @BINPRM_FLAGS_ENFORCE_NONDUMP, align 4
  %79 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %80 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %77, %65
  %84 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %85 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %84, i32 0, i32 4
  %86 = load %struct.file*, %struct.file** %85, align 8
  %87 = call i32 @allow_write_access(%struct.file* %86)
  %88 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %89 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %88, i32 0, i32 4
  store %struct.file* null, %struct.file** %89, align 8
  %90 = load i32, i32* @BINPRM_FLAGS_EXECFD, align 4
  %91 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %92 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %97 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  br label %109

98:                                               ; preds = %52
  %99 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %100 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %99, i32 0, i32 4
  %101 = load %struct.file*, %struct.file** %100, align 8
  %102 = call i32 @allow_write_access(%struct.file* %101)
  %103 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %104 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %103, i32 0, i32 4
  %105 = load %struct.file*, %struct.file** %104, align 8
  %106 = call i32 @fput(%struct.file* %105)
  %107 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %108 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %107, i32 0, i32 4
  store %struct.file* null, %struct.file** %108, align 8
  br label %109

109:                                              ; preds = %98, %83
  %110 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %111 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %110, i32 0, i32 1
  %112 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %113 = call i32 @copy_strings_kernel(i32 1, i8** %111, %struct.linux_binprm* %112)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  br label %187

117:                                              ; preds = %109
  %118 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %119 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 8
  %122 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %123 = call i32 @copy_strings_kernel(i32 1, i8** %9, %struct.linux_binprm* %122)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  br label %187

127:                                              ; preds = %117
  %128 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %129 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 8
  %132 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %133 = call i32 @bprm_change_interp(i8* %15, %struct.linux_binprm* %132)
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %127
  br label %187

137:                                              ; preds = %127
  %138 = call %struct.file* @open_exec(i8* %15)
  store %struct.file* %138, %struct.file** %6, align 8
  %139 = load %struct.file*, %struct.file** %6, align 8
  %140 = call i32 @PTR_ERR(%struct.file* %139)
  store i32 %140, i32* %10, align 4
  %141 = load %struct.file*, %struct.file** %6, align 8
  %142 = call i64 @IS_ERR(%struct.file* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  br label %187

145:                                              ; preds = %137
  %146 = load %struct.file*, %struct.file** %6, align 8
  %147 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %148 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %147, i32 0, i32 4
  store %struct.file* %146, %struct.file** %148, align 8
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @MISC_FMT_CREDENTIALS, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %169

155:                                              ; preds = %145
  %156 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %157 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @BINPRM_BUF_SIZE, align 4
  %160 = call i32 @memset(i32 %158, i32 0, i32 %159)
  %161 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %162 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %161, i32 0, i32 4
  %163 = load %struct.file*, %struct.file** %162, align 8
  %164 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %165 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @BINPRM_BUF_SIZE, align 4
  %168 = call i32 @kernel_read(%struct.file* %163, i32 0, i32 %166, i32 %167)
  store i32 %168, i32* %10, align 4
  br label %172

169:                                              ; preds = %145
  %170 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %171 = call i32 @prepare_binprm(%struct.linux_binprm* %170)
  store i32 %171, i32* %10, align 4
  br label %172

172:                                              ; preds = %169, %155
  %173 = load i32, i32* %10, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  br label %187

176:                                              ; preds = %172
  %177 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %178 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %179 = call i32 @search_binary_handler(%struct.linux_binprm* %177, %struct.pt_regs* %178)
  store i32 %179, i32* %10, align 4
  %180 = load i32, i32* %10, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  br label %187

183:                                              ; preds = %176
  br label %184

184:                                              ; preds = %193, %183, %63, %50, %37, %20
  %185 = load i32, i32* %10, align 4
  %186 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %186)
  ret i32 %185

187:                                              ; preds = %182, %175, %144, %136, %126, %116
  %188 = load i32, i32* %11, align 4
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load i32, i32* %11, align 4
  %192 = call i32 @sys_close(i32 %191)
  br label %193

193:                                              ; preds = %190, %187
  %194 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %195 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %194, i32 0, i32 2
  store i32 0, i32* %195, align 8
  %196 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %197 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %196, i32 0, i32 0
  store i32 0, i32* %197, align 8
  br label %184
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @read_lock(i32*) #2

declare dso_local %struct.TYPE_3__* @check_file(%struct.linux_binprm*) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i32 @read_unlock(i32*) #2

declare dso_local i32 @remove_arg_zero(%struct.linux_binprm*) #2

declare dso_local i32 @get_unused_fd(...) #2

declare dso_local i32 @fd_install(i32, %struct.file*) #2

declare dso_local i64 @file_permission(%struct.file*, i32) #2

declare dso_local i32 @allow_write_access(%struct.file*) #2

declare dso_local i32 @fput(%struct.file*) #2

declare dso_local i32 @copy_strings_kernel(i32, i8**, %struct.linux_binprm*) #2

declare dso_local i32 @bprm_change_interp(i8*, %struct.linux_binprm*) #2

declare dso_local %struct.file* @open_exec(i8*) #2

declare dso_local i32 @PTR_ERR(%struct.file*) #2

declare dso_local i64 @IS_ERR(%struct.file*) #2

declare dso_local i32 @memset(i32, i32, i32) #2

declare dso_local i32 @kernel_read(%struct.file*, i32, i32, i32) #2

declare dso_local i32 @prepare_binprm(%struct.linux_binprm*) #2

declare dso_local i32 @search_binary_handler(%struct.linux_binprm*, %struct.pt_regs*) #2

declare dso_local i32 @sys_close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
