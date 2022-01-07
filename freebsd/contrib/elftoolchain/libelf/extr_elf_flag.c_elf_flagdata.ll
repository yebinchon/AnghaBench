; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_elf_flag.c_elf_flagdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_elf_flag.c_elf_flagdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Libelf_Data = type { i32 }

@ELF_C_SET = common dso_local global i64 0, align 8
@ELF_C_CLR = common dso_local global i64 0, align 8
@ELF_F_DIRTY = common dso_local global i32 0, align 4
@ARGUMENT = common dso_local global i32 0, align 4
@LIBELF_F_API_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elf_flagdata(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct._Libelf_Data*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %53

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @ELF_C_SET, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @ELF_C_CLR, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %17, %13
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @ELF_F_DIRTY, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21, %17
  %28 = load i32, i32* @ARGUMENT, align 4
  %29 = call i32 @LIBELF_SET_ERROR(i32 %28, i32 0)
  store i32 0, i32* %4, align 4
  br label %53

30:                                               ; preds = %21
  %31 = load i32*, i32** %5, align 8
  %32 = bitcast i32* %31 to %struct._Libelf_Data*
  store %struct._Libelf_Data* %32, %struct._Libelf_Data** %9, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @ELF_C_SET, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  %38 = load %struct._Libelf_Data*, %struct._Libelf_Data** %9, align 8
  %39 = getelementptr inbounds %struct._Libelf_Data, %struct._Libelf_Data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  store i32 %41, i32* %8, align 4
  br label %49

42:                                               ; preds = %30
  %43 = load i32, i32* %7, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct._Libelf_Data*, %struct._Libelf_Data** %9, align 8
  %46 = getelementptr inbounds %struct._Libelf_Data, %struct._Libelf_Data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %42, %36
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @LIBELF_F_API_MASK, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %27, %12
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @LIBELF_SET_ERROR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
