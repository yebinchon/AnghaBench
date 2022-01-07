; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_ckprefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_ckprefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rex = common dso_local global i32 0, align 4
@prefixes = common dso_local global i64 0, align 8
@used_prefixes = common dso_local global i64 0, align 8
@rex_used = common dso_local global i32 0, align 4
@the_info = common dso_local global i32 0, align 4
@codep = common dso_local global i32* null, align 8
@address_mode = common dso_local global i32 0, align 4
@mode_64bit = common dso_local global i32 0, align 4
@PREFIX_REPZ = common dso_local global i64 0, align 8
@PREFIX_REPNZ = common dso_local global i64 0, align 8
@PREFIX_LOCK = common dso_local global i64 0, align 8
@PREFIX_CS = common dso_local global i64 0, align 8
@PREFIX_SS = common dso_local global i64 0, align 8
@PREFIX_DS = common dso_local global i64 0, align 8
@PREFIX_ES = common dso_local global i64 0, align 8
@PREFIX_FS = common dso_local global i64 0, align 8
@PREFIX_GS = common dso_local global i64 0, align 8
@PREFIX_DATA = common dso_local global i64 0, align 8
@PREFIX_ADDR = common dso_local global i64 0, align 8
@PREFIX_FWAIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ckprefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ckprefix() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* @rex, align 4
  store i64 0, i64* @prefixes, align 8
  store i64 0, i64* @used_prefixes, align 8
  store i32 0, i32* @rex_used, align 4
  br label %2

2:                                                ; preds = %0, %82
  %3 = load i32, i32* @the_info, align 4
  %4 = load i32*, i32** @codep, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 1
  %6 = call i32 @FETCH_DATA(i32 %3, i32* %5)
  store i32 0, i32* %1, align 4
  %7 = load i32*, i32** @codep, align 8
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %76 [
    i32 64, label %9
    i32 65, label %9
    i32 66, label %9
    i32 67, label %9
    i32 68, label %9
    i32 69, label %9
    i32 70, label %9
    i32 71, label %9
    i32 72, label %9
    i32 73, label %9
    i32 74, label %9
    i32 75, label %9
    i32 76, label %9
    i32 77, label %9
    i32 78, label %9
    i32 79, label %9
    i32 243, label %18
    i32 242, label %22
    i32 240, label %26
    i32 46, label %30
    i32 54, label %34
    i32 62, label %38
    i32 38, label %42
    i32 100, label %46
    i32 101, label %50
    i32 102, label %54
    i32 103, label %58
    i32 128, label %62
  ]

9:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %10 = load i32, i32* @address_mode, align 4
  %11 = load i32, i32* @mode_64bit, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32*, i32** @codep, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %1, align 4
  br label %17

16:                                               ; preds = %9
  br label %86

17:                                               ; preds = %13
  br label %77

18:                                               ; preds = %2
  %19 = load i64, i64* @PREFIX_REPZ, align 8
  %20 = load i64, i64* @prefixes, align 8
  %21 = or i64 %20, %19
  store i64 %21, i64* @prefixes, align 8
  br label %77

22:                                               ; preds = %2
  %23 = load i64, i64* @PREFIX_REPNZ, align 8
  %24 = load i64, i64* @prefixes, align 8
  %25 = or i64 %24, %23
  store i64 %25, i64* @prefixes, align 8
  br label %77

26:                                               ; preds = %2
  %27 = load i64, i64* @PREFIX_LOCK, align 8
  %28 = load i64, i64* @prefixes, align 8
  %29 = or i64 %28, %27
  store i64 %29, i64* @prefixes, align 8
  br label %77

30:                                               ; preds = %2
  %31 = load i64, i64* @PREFIX_CS, align 8
  %32 = load i64, i64* @prefixes, align 8
  %33 = or i64 %32, %31
  store i64 %33, i64* @prefixes, align 8
  br label %77

34:                                               ; preds = %2
  %35 = load i64, i64* @PREFIX_SS, align 8
  %36 = load i64, i64* @prefixes, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* @prefixes, align 8
  br label %77

38:                                               ; preds = %2
  %39 = load i64, i64* @PREFIX_DS, align 8
  %40 = load i64, i64* @prefixes, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* @prefixes, align 8
  br label %77

42:                                               ; preds = %2
  %43 = load i64, i64* @PREFIX_ES, align 8
  %44 = load i64, i64* @prefixes, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* @prefixes, align 8
  br label %77

46:                                               ; preds = %2
  %47 = load i64, i64* @PREFIX_FS, align 8
  %48 = load i64, i64* @prefixes, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* @prefixes, align 8
  br label %77

50:                                               ; preds = %2
  %51 = load i64, i64* @PREFIX_GS, align 8
  %52 = load i64, i64* @prefixes, align 8
  %53 = or i64 %52, %51
  store i64 %53, i64* @prefixes, align 8
  br label %77

54:                                               ; preds = %2
  %55 = load i64, i64* @PREFIX_DATA, align 8
  %56 = load i64, i64* @prefixes, align 8
  %57 = or i64 %56, %55
  store i64 %57, i64* @prefixes, align 8
  br label %77

58:                                               ; preds = %2
  %59 = load i64, i64* @PREFIX_ADDR, align 8
  %60 = load i64, i64* @prefixes, align 8
  %61 = or i64 %60, %59
  store i64 %61, i64* @prefixes, align 8
  br label %77

62:                                               ; preds = %2
  %63 = load i64, i64* @prefixes, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* @rex, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65, %62
  %69 = load i64, i64* @PREFIX_FWAIT, align 8
  %70 = load i64, i64* @prefixes, align 8
  %71 = or i64 %70, %69
  store i64 %71, i64* @prefixes, align 8
  %72 = load i32*, i32** @codep, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** @codep, align 8
  br label %86

74:                                               ; preds = %65
  %75 = load i64, i64* @PREFIX_FWAIT, align 8
  store i64 %75, i64* @prefixes, align 8
  br label %77

76:                                               ; preds = %2
  br label %86

77:                                               ; preds = %74, %58, %54, %50, %46, %42, %38, %34, %30, %26, %22, %18, %17
  %78 = load i32, i32* @rex, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* @rex, align 4
  store i32 %81, i32* @rex_used, align 4
  br label %86

82:                                               ; preds = %77
  %83 = load i32, i32* %1, align 4
  store i32 %83, i32* @rex, align 4
  %84 = load i32*, i32** @codep, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** @codep, align 8
  br label %2

86:                                               ; preds = %80, %76, %68, %16
  ret void
}

declare dso_local i32 @FETCH_DATA(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
