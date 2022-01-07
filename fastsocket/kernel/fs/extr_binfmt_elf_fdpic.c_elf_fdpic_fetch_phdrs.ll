; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_binfmt_elf_fdpic.c_elf_fdpic_fetch_phdrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_binfmt_elf_fdpic.c_elf_fdpic_fetch_phdrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_fdpic_params = type { i32, i32, %struct.TYPE_2__, %struct.elf32_phdr* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.elf32_phdr = type { i64, i32, i32 }
%struct.file = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOEXEC = common dso_local global i32 0, align 4
@PT_GNU_STACK = common dso_local global i64 0, align 8
@PF_X = common dso_local global i32 0, align 4
@ELF_FDPIC_FLAG_EXEC_STACK = common dso_local global i32 0, align 4
@ELF_FDPIC_FLAG_NOEXEC_STACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_fdpic_params*, %struct.file*)* @elf_fdpic_fetch_phdrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_fdpic_fetch_phdrs(%struct.elf_fdpic_params* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elf_fdpic_params*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.elf32_phdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.elf_fdpic_params* %0, %struct.elf_fdpic_params** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %4, align 8
  %11 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = icmp ne i64 %14, 4
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %126

19:                                               ; preds = %2
  %20 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %4, align 8
  %21 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = zext i32 %23 to i64
  %25 = icmp ugt i64 %24, 16384
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %126

29:                                               ; preds = %19
  %30 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %4, align 8
  %31 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = zext i32 %33 to i64
  %35 = mul i64 %34, 4
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.elf32_phdr* @kmalloc(i64 %36, i32 %37)
  %39 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %4, align 8
  %40 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %39, i32 0, i32 3
  store %struct.elf32_phdr* %38, %struct.elf32_phdr** %40, align 8
  %41 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %4, align 8
  %42 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %41, i32 0, i32 3
  %43 = load %struct.elf32_phdr*, %struct.elf32_phdr** %42, align 8
  %44 = icmp ne %struct.elf32_phdr* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %29
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %126

48:                                               ; preds = %29
  %49 = load %struct.file*, %struct.file** %5, align 8
  %50 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %4, align 8
  %51 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %4, align 8
  %55 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %54, i32 0, i32 3
  %56 = load %struct.elf32_phdr*, %struct.elf32_phdr** %55, align 8
  %57 = bitcast %struct.elf32_phdr* %56 to i8*
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @kernel_read(%struct.file* %49, i32 %53, i8* %57, i64 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %7, align 8
  %63 = icmp ne i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %48
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* %8, align 4
  br label %75

72:                                               ; preds = %67
  %73 = load i32, i32* @ENOEXEC, align 4
  %74 = sub nsw i32 0, %73
  br label %75

75:                                               ; preds = %72, %70
  %76 = phi i32 [ %71, %70 ], [ %74, %72 ]
  store i32 %76, i32* %3, align 4
  br label %126

77:                                               ; preds = %48
  %78 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %4, align 8
  %79 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %78, i32 0, i32 3
  %80 = load %struct.elf32_phdr*, %struct.elf32_phdr** %79, align 8
  store %struct.elf32_phdr* %80, %struct.elf32_phdr** %6, align 8
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %120, %77
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %4, align 8
  %84 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ult i32 %82, %86
  br i1 %87, label %88, label %125

88:                                               ; preds = %81
  %89 = load %struct.elf32_phdr*, %struct.elf32_phdr** %6, align 8
  %90 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @PT_GNU_STACK, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %120

95:                                               ; preds = %88
  %96 = load %struct.elf32_phdr*, %struct.elf32_phdr** %6, align 8
  %97 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @PF_X, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = load i32, i32* @ELF_FDPIC_FLAG_EXEC_STACK, align 4
  %104 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %4, align 8
  %105 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %114

108:                                              ; preds = %95
  %109 = load i32, i32* @ELF_FDPIC_FLAG_NOEXEC_STACK, align 4
  %110 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %4, align 8
  %111 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %108, %102
  %115 = load %struct.elf32_phdr*, %struct.elf32_phdr** %6, align 8
  %116 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %4, align 8
  %119 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  br label %125

120:                                              ; preds = %94
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %9, align 4
  %123 = load %struct.elf32_phdr*, %struct.elf32_phdr** %6, align 8
  %124 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %123, i32 1
  store %struct.elf32_phdr* %124, %struct.elf32_phdr** %6, align 8
  br label %81

125:                                              ; preds = %114, %81
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %75, %45, %26, %16
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local %struct.elf32_phdr* @kmalloc(i64, i32) #1

declare dso_local i32 @kernel_read(%struct.file*, i32, i8*, i64) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
