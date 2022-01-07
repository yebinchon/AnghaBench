; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_binfmt_elf_fdpic.c_elf_fdpic_transfer_args_to_stack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_binfmt_elf_fdpic.c_elf_fdpic_transfer_args_to_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_binprm = type { i64, i32* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@MAX_ARG_PAGES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.linux_binprm*, i64*)* @elf_fdpic_transfer_args_to_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_fdpic_transfer_args_to_stack(%struct.linux_binprm* %0, i64* %1) #0 {
  %3 = alloca %struct.linux_binprm*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.linux_binprm* %0, %struct.linux_binprm** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %11 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PAGE_SHIFT, align 8
  %14 = lshr i64 %12, %13
  store i64 %14, i64* %6, align 8
  %15 = load i64*, i64** %4, align 8
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load i32, i32* @MAX_ARG_PAGES, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %5, align 8
  br label %20

20:                                               ; preds = %56, %2
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %20
  %25 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %26 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @kmap(i32 %30)
  store i8* %31, i8** %8, align 8
  %32 = load i64, i64* @PAGE_SIZE, align 8
  %33 = load i64, i64* %7, align 8
  %34 = sub i64 %33, %32
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = load i8*, i8** %8, align 8
  %38 = load i64, i64* @PAGE_SIZE, align 8
  %39 = call i64 @copy_to_user(i8* %36, i8* %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %24
  %42 = load i32, i32* @EFAULT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %41, %24
  %45 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %46 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @kunmap(i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %73

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %5, align 8
  %58 = add i64 %57, -1
  store i64 %58, i64* %5, align 8
  br label %20

59:                                               ; preds = %20
  %60 = load i64*, i64** %4, align 8
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @MAX_ARG_PAGES, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* @PAGE_SIZE, align 8
  %65 = mul i64 %63, %64
  %66 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %67 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = sub i64 %65, %68
  %70 = sub i64 %61, %69
  %71 = and i64 %70, -16
  %72 = load i64*, i64** %4, align 8
  store i64 %71, i64* %72, align 8
  br label %73

73:                                               ; preds = %59, %54
  %74 = load i32, i32* %9, align 4
  ret i32 %74
}

declare dso_local i8* @kmap(i32) #1

declare dso_local i64 @copy_to_user(i8*, i8*, i64) #1

declare dso_local i32 @kunmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
