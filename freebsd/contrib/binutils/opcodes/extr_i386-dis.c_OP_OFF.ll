; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_OP_OFF.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_OP_OFF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@intel_syntax = common dso_local global i64 0, align 8
@SUFFIX_ALWAYS = common dso_local global i32 0, align 4
@AFLAG = common dso_local global i32 0, align 4
@address_mode = common dso_local global i64 0, align 8
@mode_64bit = common dso_local global i64 0, align 8
@prefixes = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @OP_OFF to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OP_OFF(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @intel_syntax, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @SUFFIX_ALWAYS, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @intel_operand_size(i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %13, %8, %2
  %18 = call i32 (...) @append_seg()
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @AFLAG, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = load i64, i64* @address_mode, align 8
  %25 = load i64, i64* @mode_64bit, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %17
  %28 = call i32 (...) @get32()
  store i32 %28, i32* %5, align 4
  br label %31

29:                                               ; preds = %23
  %30 = call i32 (...) @get16()
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = load i64, i64* @intel_syntax, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %31
  %35 = load i32, i32* @prefixes, align 4
  %36 = load i32, i32* @PREFIX_CS, align 4
  %37 = load i32, i32* @PREFIX_SS, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @PREFIX_DS, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @PREFIX_ES, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @PREFIX_FS, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @PREFIX_GS, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %35, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %34
  %50 = load i8**, i8*** @names_seg, align 8
  %51 = load i64, i64* @ds_reg, align 8
  %52 = load i64, i64* @es_reg, align 8
  %53 = sub i64 %51, %52
  %54 = getelementptr inbounds i8*, i8** %50, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @oappend(i8* %55)
  %57 = call i32 @oappend(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %49, %34
  br label %59

59:                                               ; preds = %58, %31
  %60 = load i8*, i8** @scratchbuf, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @print_operand_value(i8* %60, i32 1, i32 %61)
  %63 = load i8*, i8** @scratchbuf, align 8
  %64 = call i32 @oappend(i8* %63)
  ret void
}

declare dso_local i32 @intel_operand_size(i32, i32) #1

declare dso_local i32 @append_seg(...) #1

declare dso_local i32 @get32(...) #1

declare dso_local i32 @get16(...) #1

declare dso_local i32 @oappend(i8*) #1

declare dso_local i32 @print_operand_value(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
