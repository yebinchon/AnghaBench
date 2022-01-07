; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_binfmt_em86.c_load_em86.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_binfmt_em86.c_load_em86.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_binprm = type { i8*, %struct.file*, i32, i64 }
%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pt_regs = type { i32 }
%struct.elfhdr = type { i64, i64, i32 }

@ELFMAG = common dso_local global i32 0, align 4
@SELFMAG = common dso_local global i32 0, align 4
@ENOEXEC = common dso_local global i32 0, align 4
@ET_EXEC = common dso_local global i64 0, align 8
@ET_DYN = common dso_local global i64 0, align 8
@EM_386 = common dso_local global i64 0, align 8
@EM_486 = common dso_local global i64 0, align 8
@EM86_INTERP = common dso_local global i8* null, align 8
@EM86_I_NAME = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.linux_binprm*, %struct.pt_regs*)* @load_em86 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_em86(%struct.linux_binprm* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.linux_binprm*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.elfhdr, align 8
  store %struct.linux_binprm* %0, %struct.linux_binprm** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  %12 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %13 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.elfhdr*
  %16 = bitcast %struct.elfhdr* %11 to i8*
  %17 = bitcast %struct.elfhdr* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 24, i1 false)
  %18 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %11, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ELFMAG, align 4
  %21 = load i32, i32* @SELFMAG, align 4
  %22 = call i64 @memcmp(i32 %19, i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOEXEC, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %142

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %11, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ET_EXEC, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %11, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ET_DYN, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %63, label %37

37:                                               ; preds = %32, %27
  %38 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %11, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @EM_386, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %11, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @EM_486, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %42, %37
  %48 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %49 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %48, i32 0, i32 1
  %50 = load %struct.file*, %struct.file** %49, align 8
  %51 = getelementptr inbounds %struct.file, %struct.file* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = icmp ne %struct.TYPE_2__* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %47
  %55 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %56 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %55, i32 0, i32 1
  %57 = load %struct.file*, %struct.file** %56, align 8
  %58 = getelementptr inbounds %struct.file, %struct.file* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %54, %47, %42, %32
  %64 = load i32, i32* @ENOEXEC, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %142

66:                                               ; preds = %54
  %67 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %68 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %67, i32 0, i32 1
  %69 = load %struct.file*, %struct.file** %68, align 8
  %70 = call i32 @allow_write_access(%struct.file* %69)
  %71 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %72 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %71, i32 0, i32 1
  %73 = load %struct.file*, %struct.file** %72, align 8
  %74 = call i32 @fput(%struct.file* %73)
  %75 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %76 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %75, i32 0, i32 1
  store %struct.file* null, %struct.file** %76, align 8
  %77 = load i8*, i8** @EM86_INTERP, align 8
  store i8* %77, i8** %6, align 8
  %78 = load i8*, i8** @EM86_I_NAME, align 8
  store i8* %78, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %79 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %80 = call i32 @remove_arg_zero(%struct.linux_binprm* %79)
  %81 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %82 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %81, i32 0, i32 0
  %83 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %84 = call i32 @copy_strings_kernel(i32 1, i8** %82, %struct.linux_binprm* %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %66
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %3, align 4
  br label %142

89:                                               ; preds = %66
  %90 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %91 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %108

96:                                               ; preds = %89
  %97 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %98 = call i32 @copy_strings_kernel(i32 1, i8** %8, %struct.linux_binprm* %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %3, align 4
  br label %142

103:                                              ; preds = %96
  %104 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %105 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 8
  br label %108

108:                                              ; preds = %103, %89
  %109 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %110 = call i32 @copy_strings_kernel(i32 1, i8** %7, %struct.linux_binprm* %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %3, align 4
  br label %142

115:                                              ; preds = %108
  %116 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %117 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  %120 = load i8*, i8** %6, align 8
  %121 = call %struct.file* @open_exec(i8* %120)
  store %struct.file* %121, %struct.file** %9, align 8
  %122 = load %struct.file*, %struct.file** %9, align 8
  %123 = call i64 @IS_ERR(%struct.file* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %115
  %126 = load %struct.file*, %struct.file** %9, align 8
  %127 = call i32 @PTR_ERR(%struct.file* %126)
  store i32 %127, i32* %3, align 4
  br label %142

128:                                              ; preds = %115
  %129 = load %struct.file*, %struct.file** %9, align 8
  %130 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %131 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %130, i32 0, i32 1
  store %struct.file* %129, %struct.file** %131, align 8
  %132 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %133 = call i32 @prepare_binprm(%struct.linux_binprm* %132)
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %128
  %137 = load i32, i32* %10, align 4
  store i32 %137, i32* %3, align 4
  br label %142

138:                                              ; preds = %128
  %139 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %140 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %141 = call i32 @search_binary_handler(%struct.linux_binprm* %139, %struct.pt_regs* %140)
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %138, %136, %125, %113, %101, %87, %63, %24
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @memcmp(i32, i32, i32) #2

declare dso_local i32 @allow_write_access(%struct.file*) #2

declare dso_local i32 @fput(%struct.file*) #2

declare dso_local i32 @remove_arg_zero(%struct.linux_binprm*) #2

declare dso_local i32 @copy_strings_kernel(i32, i8**, %struct.linux_binprm*) #2

declare dso_local %struct.file* @open_exec(i8*) #2

declare dso_local i64 @IS_ERR(%struct.file*) #2

declare dso_local i32 @PTR_ERR(%struct.file*) #2

declare dso_local i32 @prepare_binprm(%struct.linux_binprm*) #2

declare dso_local i32 @search_binary_handler(%struct.linux_binprm*, %struct.pt_regs*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
