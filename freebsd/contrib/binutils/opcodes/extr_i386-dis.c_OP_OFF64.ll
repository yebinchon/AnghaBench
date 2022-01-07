; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_OP_OFF64.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_OP_OFF64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@address_mode = common dso_local global i64 0, align 8
@mode_64bit = common dso_local global i64 0, align 8
@prefixes = common dso_local global i32 0, align 4
@PREFIX_ADDR = common dso_local global i32 0, align 4
@intel_syntax = common dso_local global i64 0, align 8
@SUFFIX_ALWAYS = common dso_local global i32 0, align 4
@PREFIX_CS = common dso_local global i32 0, align 4
@PREFIX_SS = common dso_local global i32 0, align 4
@PREFIX_DS = common dso_local global i32 0, align 4
@PREFIX_ES = common dso_local global i32 0, align 4
@PREFIX_FS = common dso_local global i32 0, align 4
@PREFIX_GS = common dso_local global i32 0, align 4
@names_seg = common dso_local global i8** null, align 8
@ds_reg = common dso_local global i64 0, align 8
@es_reg = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@scratchbuf = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @OP_OFF64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OP_OFF64(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @address_mode, align 8
  %7 = load i64, i64* @mode_64bit, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @prefixes, align 4
  %11 = load i32, i32* @PREFIX_ADDR, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9, %2
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @OP_OFF(i32 %15, i32 %16)
  br label %66

18:                                               ; preds = %9
  %19 = load i64, i64* @intel_syntax, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @SUFFIX_ALWAYS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @intel_operand_size(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %21, %18
  %31 = call i32 (...) @append_seg()
  %32 = call i32 (...) @get64()
  store i32 %32, i32* %5, align 4
  %33 = load i64, i64* @intel_syntax, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %30
  %36 = load i32, i32* @prefixes, align 4
  %37 = load i32, i32* @PREFIX_CS, align 4
  %38 = load i32, i32* @PREFIX_SS, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @PREFIX_DS, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @PREFIX_ES, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @PREFIX_FS, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @PREFIX_GS, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %36, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %35
  %51 = load i8**, i8*** @names_seg, align 8
  %52 = load i64, i64* @ds_reg, align 8
  %53 = load i64, i64* @es_reg, align 8
  %54 = sub i64 %52, %53
  %55 = getelementptr inbounds i8*, i8** %51, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @oappend(i8* %56)
  %58 = call i32 @oappend(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %50, %35
  br label %60

60:                                               ; preds = %59, %30
  %61 = load i8*, i8** @scratchbuf, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @print_operand_value(i8* %61, i32 1, i32 %62)
  %64 = load i8*, i8** @scratchbuf, align 8
  %65 = call i32 @oappend(i8* %64)
  br label %66

66:                                               ; preds = %60, %14
  ret void
}

declare dso_local i32 @OP_OFF(i32, i32) #1

declare dso_local i32 @intel_operand_size(i32, i32) #1

declare dso_local i32 @append_seg(...) #1

declare dso_local i32 @get64(...) #1

declare dso_local i32 @oappend(i8*) #1

declare dso_local i32 @print_operand_value(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
