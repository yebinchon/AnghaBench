; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_emit_insn_group_barriers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_emit_insn_group_barriers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CODE_LABEL = common dso_local global i64 0, align 8
@NOTE = common dso_local global i64 0, align 8
@NOTE_INSN_BASIC_BLOCK = common dso_local global i64 0, align 8
@INSN = common dso_local global i64 0, align 8
@UNSPEC_VOLATILE = common dso_local global i64 0, align 8
@UNSPECV_INSN_GROUP_BARRIER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Emitting stop before label %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @emit_insn_group_barriers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_insn_group_barriers(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 (...) @init_insn_group_barriers()
  %7 = call i64 (...) @get_insns()
  store i64 %7, i64* %3, align 8
  br label %8

8:                                                ; preds = %89, %1
  %9 = load i64, i64* %3, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %92

11:                                               ; preds = %8
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @GET_CODE(i64 %12)
  %14 = load i64, i64* @CODE_LABEL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i64, i64* %3, align 8
  store i64 %20, i64* %4, align 8
  br label %21

21:                                               ; preds = %19, %16
  store i32 0, i32* %5, align 4
  br label %88

22:                                               ; preds = %11
  %23 = load i64, i64* %3, align 8
  %24 = call i64 @GET_CODE(i64 %23)
  %25 = load i64, i64* @NOTE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load i64, i64* %3, align 8
  %29 = call i64 @NOTE_LINE_NUMBER(i64 %28)
  %30 = load i64, i64* @NOTE_INSN_BASIC_BLOCK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i64, i64* %3, align 8
  store i64 %36, i64* %4, align 8
  br label %37

37:                                               ; preds = %35, %32
  store i32 0, i32* %5, align 4
  br label %87

38:                                               ; preds = %27, %22
  %39 = load i64, i64* %3, align 8
  %40 = call i64 @GET_CODE(i64 %39)
  %41 = load i64, i64* @INSN, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %38
  %44 = load i64, i64* %3, align 8
  %45 = call i64 @PATTERN(i64 %44)
  %46 = call i64 @GET_CODE(i64 %45)
  %47 = load i64, i64* @UNSPEC_VOLATILE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load i64, i64* %3, align 8
  %51 = call i64 @PATTERN(i64 %50)
  %52 = call i64 @XINT(i64 %51, i32 1)
  %53 = load i64, i64* @UNSPECV_INSN_GROUP_BARRIER, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = call i32 (...) @init_insn_group_barriers()
  store i64 0, i64* %4, align 8
  br label %86

57:                                               ; preds = %49, %43, %38
  %58 = load i64, i64* %3, align 8
  %59 = call i64 @INSN_P(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %57
  store i32 1, i32* %5, align 4
  %62 = load i64, i64* %3, align 8
  %63 = call i64 @group_barrier_needed(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %61
  %66 = load i64, i64* %4, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %65
  %69 = load i32*, i32** %2, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i32*, i32** %2, align 8
  %73 = load i64, i64* %4, align 8
  %74 = call i32 @INSN_UID(i64 %73)
  %75 = call i32 @fprintf(i32* %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %71, %68
  %77 = call i32 @GEN_INT(i32 3)
  %78 = call i32 @gen_insn_group_barrier(i32 %77)
  %79 = load i64, i64* %4, align 8
  %80 = call i32 @emit_insn_before(i32 %78, i64 %79)
  %81 = load i64, i64* %4, align 8
  store i64 %81, i64* %3, align 8
  %82 = call i32 (...) @init_insn_group_barriers()
  store i64 0, i64* %4, align 8
  br label %83

83:                                               ; preds = %76, %65
  br label %84

84:                                               ; preds = %83, %61
  br label %85

85:                                               ; preds = %84, %57
  br label %86

86:                                               ; preds = %85, %55
  br label %87

87:                                               ; preds = %86, %37
  br label %88

88:                                               ; preds = %87, %21
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %3, align 8
  %91 = call i64 @NEXT_INSN(i64 %90)
  store i64 %91, i64* %3, align 8
  br label %8

92:                                               ; preds = %8
  ret void
}

declare dso_local i32 @init_insn_group_barriers(...) #1

declare dso_local i64 @get_insns(...) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @NOTE_LINE_NUMBER(i64) #1

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i64 @XINT(i64, i32) #1

declare dso_local i64 @INSN_P(i64) #1

declare dso_local i64 @group_barrier_needed(i64) #1

declare dso_local i32 @fprintf(i32*, i8*, i32) #1

declare dso_local i32 @INSN_UID(i64) #1

declare dso_local i32 @emit_insn_before(i32, i64) #1

declare dso_local i32 @gen_insn_group_barrier(i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i64 @NEXT_INSN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
