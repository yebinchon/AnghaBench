; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_macro_build_ldst_constoffset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_macro_build_ldst_constoffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64, i64 }

@O_constant = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"operand overflow\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"t,o(b)\00", align 1
@BFD_RELOC_LO16 = common dso_local global i32 0, align 4
@AT = common dso_local global i32 0, align 4
@ADDRESS_ADD_INSN = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"d,v,t\00", align 1
@mips_opts = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"Macro used $at after \22.set noat\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8*, i32, i32, i32)* @macro_build_ldst_constoffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macro_build_ldst_constoffset(%struct.TYPE_7__* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @O_constant, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = call i32 @normalize_constant_expr(%struct.TYPE_7__* %21)
  br label %23

23:                                               ; preds = %20, %5
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 32768
  %28 = call i32 @IS_SEXT_32BIT_NUM(i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 @as_warn(i32 %31)
  br label %33

33:                                               ; preds = %30, %23
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @IS_SEXT_16BIT_NUM(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @BFD_RELOC_LO16, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @macro_build(%struct.TYPE_7__* %40, i8* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43, i32 %44)
  br label %67

46:                                               ; preds = %33
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = load i32, i32* @AT, align 4
  %49 = call i32 @macro_build_lui(%struct.TYPE_7__* %47, i32 %48)
  %50 = load i8*, i8** @ADDRESS_ADD_INSN, align 8
  %51 = load i32, i32* @AT, align 4
  %52 = load i32, i32* @AT, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @macro_build(%struct.TYPE_7__* null, i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %52, i32 %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @BFD_RELOC_LO16, align 4
  %59 = load i32, i32* @AT, align 4
  %60 = call i32 @macro_build(%struct.TYPE_7__* %55, i8* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58, i32 %59)
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @mips_opts, i32 0, i32 0), align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %46
  %64 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %65 = call i32 @as_bad(i32 %64)
  br label %66

66:                                               ; preds = %63, %46
  br label %67

67:                                               ; preds = %66, %39
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @normalize_constant_expr(%struct.TYPE_7__*) #1

declare dso_local i32 @IS_SEXT_32BIT_NUM(i64) #1

declare dso_local i32 @as_warn(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @IS_SEXT_16BIT_NUM(i64) #1

declare dso_local i32 @macro_build(%struct.TYPE_7__*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @macro_build_lui(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @as_bad(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
