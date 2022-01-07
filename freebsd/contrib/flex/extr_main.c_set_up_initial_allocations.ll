; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_main.c_set_up_initial_allocations.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_main.c_set_up_initial_allocations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@long_align = common dso_local global i64 0, align 8
@MAXIMUM_MNS_LONG = common dso_local global i32 0, align 4
@MAXIMUM_MNS = common dso_local global i32 0, align 4
@maximum_mns = common dso_local global i32 0, align 4
@INITIAL_MNS = common dso_local global i32 0, align 4
@current_mns = common dso_local global i32 0, align 4
@firstst = common dso_local global i8* null, align 8
@lastst = common dso_local global i8* null, align 8
@finalst = common dso_local global i8* null, align 8
@transchar = common dso_local global i8* null, align 8
@trans1 = common dso_local global i8* null, align 8
@trans2 = common dso_local global i8* null, align 8
@accptnum = common dso_local global i8* null, align 8
@assoc_rule = common dso_local global i8* null, align 8
@state_type = common dso_local global i8* null, align 8
@INITIAL_MAX_RULES = common dso_local global i32 0, align 4
@current_max_rules = common dso_local global i32 0, align 4
@rule_type = common dso_local global i8* null, align 8
@rule_linenum = common dso_local global i8* null, align 8
@rule_useful = common dso_local global i8* null, align 8
@rule_has_nl = common dso_local global i8* null, align 8
@INITIAL_MAX_SCS = common dso_local global i32 0, align 4
@current_max_scs = common dso_local global i32 0, align 4
@scset = common dso_local global i8* null, align 8
@scbol = common dso_local global i8* null, align 8
@scxclu = common dso_local global i8* null, align 8
@sceof = common dso_local global i8* null, align 8
@scname = common dso_local global i32 0, align 4
@INITIAL_MAX_CCLS = common dso_local global i32 0, align 4
@current_maxccls = common dso_local global i32 0, align 4
@cclmap = common dso_local global i8* null, align 8
@ccllen = common dso_local global i8* null, align 8
@cclng = common dso_local global i8* null, align 8
@ccl_has_nl = common dso_local global i8* null, align 8
@INITIAL_MAX_CCL_TBL_SIZE = common dso_local global i32 0, align 4
@current_max_ccl_tbl_size = common dso_local global i32 0, align 4
@ccltbl = common dso_local global i32 0, align 4
@INITIAL_MAX_DFA_SIZE = common dso_local global i32 0, align 4
@current_max_dfa_size = common dso_local global i32 0, align 4
@INITIAL_MAX_XPAIRS = common dso_local global i32 0, align 4
@current_max_xpairs = common dso_local global i32 0, align 4
@nxt = common dso_local global i8* null, align 8
@chk = common dso_local global i8* null, align 8
@INITIAL_MAX_TEMPLATE_XPAIRS = common dso_local global i32 0, align 4
@current_max_template_xpairs = common dso_local global i32 0, align 4
@tnxt = common dso_local global i8* null, align 8
@INITIAL_MAX_DFAS = common dso_local global i32 0, align 4
@current_max_dfas = common dso_local global i32 0, align 4
@base = common dso_local global i8* null, align 8
@def = common dso_local global i8* null, align 8
@dfasiz = common dso_local global i8* null, align 8
@accsiz = common dso_local global i8* null, align 8
@dhash = common dso_local global i8* null, align 8
@dss = common dso_local global i32 0, align 4
@dfaacc = common dso_local global i32 0, align 4
@nultrans = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_up_initial_allocations() #0 {
  %1 = load i64, i64* @long_align, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = load i32, i32* @MAXIMUM_MNS_LONG, align 4
  br label %7

5:                                                ; preds = %0
  %6 = load i32, i32* @MAXIMUM_MNS, align 4
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i32 [ %4, %3 ], [ %6, %5 ]
  store i32 %8, i32* @maximum_mns, align 4
  %9 = load i32, i32* @INITIAL_MNS, align 4
  store i32 %9, i32* @current_mns, align 4
  %10 = load i32, i32* @current_mns, align 4
  %11 = call i8* @allocate_integer_array(i32 %10)
  store i8* %11, i8** @firstst, align 8
  %12 = load i32, i32* @current_mns, align 4
  %13 = call i8* @allocate_integer_array(i32 %12)
  store i8* %13, i8** @lastst, align 8
  %14 = load i32, i32* @current_mns, align 4
  %15 = call i8* @allocate_integer_array(i32 %14)
  store i8* %15, i8** @finalst, align 8
  %16 = load i32, i32* @current_mns, align 4
  %17 = call i8* @allocate_integer_array(i32 %16)
  store i8* %17, i8** @transchar, align 8
  %18 = load i32, i32* @current_mns, align 4
  %19 = call i8* @allocate_integer_array(i32 %18)
  store i8* %19, i8** @trans1, align 8
  %20 = load i32, i32* @current_mns, align 4
  %21 = call i8* @allocate_integer_array(i32 %20)
  store i8* %21, i8** @trans2, align 8
  %22 = load i32, i32* @current_mns, align 4
  %23 = call i8* @allocate_integer_array(i32 %22)
  store i8* %23, i8** @accptnum, align 8
  %24 = load i32, i32* @current_mns, align 4
  %25 = call i8* @allocate_integer_array(i32 %24)
  store i8* %25, i8** @assoc_rule, align 8
  %26 = load i32, i32* @current_mns, align 4
  %27 = call i8* @allocate_integer_array(i32 %26)
  store i8* %27, i8** @state_type, align 8
  %28 = load i32, i32* @INITIAL_MAX_RULES, align 4
  store i32 %28, i32* @current_max_rules, align 4
  %29 = load i32, i32* @current_max_rules, align 4
  %30 = call i8* @allocate_integer_array(i32 %29)
  store i8* %30, i8** @rule_type, align 8
  %31 = load i32, i32* @current_max_rules, align 4
  %32 = call i8* @allocate_integer_array(i32 %31)
  store i8* %32, i8** @rule_linenum, align 8
  %33 = load i32, i32* @current_max_rules, align 4
  %34 = call i8* @allocate_integer_array(i32 %33)
  store i8* %34, i8** @rule_useful, align 8
  %35 = load i32, i32* @current_max_rules, align 4
  %36 = call i8* @allocate_bool_array(i32 %35)
  store i8* %36, i8** @rule_has_nl, align 8
  %37 = load i32, i32* @INITIAL_MAX_SCS, align 4
  store i32 %37, i32* @current_max_scs, align 4
  %38 = load i32, i32* @current_max_scs, align 4
  %39 = call i8* @allocate_integer_array(i32 %38)
  store i8* %39, i8** @scset, align 8
  %40 = load i32, i32* @current_max_scs, align 4
  %41 = call i8* @allocate_integer_array(i32 %40)
  store i8* %41, i8** @scbol, align 8
  %42 = load i32, i32* @current_max_scs, align 4
  %43 = call i8* @allocate_integer_array(i32 %42)
  store i8* %43, i8** @scxclu, align 8
  %44 = load i32, i32* @current_max_scs, align 4
  %45 = call i8* @allocate_integer_array(i32 %44)
  store i8* %45, i8** @sceof, align 8
  %46 = load i32, i32* @current_max_scs, align 4
  %47 = call i32 @allocate_char_ptr_array(i32 %46)
  store i32 %47, i32* @scname, align 4
  %48 = load i32, i32* @INITIAL_MAX_CCLS, align 4
  store i32 %48, i32* @current_maxccls, align 4
  %49 = load i32, i32* @current_maxccls, align 4
  %50 = call i8* @allocate_integer_array(i32 %49)
  store i8* %50, i8** @cclmap, align 8
  %51 = load i32, i32* @current_maxccls, align 4
  %52 = call i8* @allocate_integer_array(i32 %51)
  store i8* %52, i8** @ccllen, align 8
  %53 = load i32, i32* @current_maxccls, align 4
  %54 = call i8* @allocate_integer_array(i32 %53)
  store i8* %54, i8** @cclng, align 8
  %55 = load i32, i32* @current_maxccls, align 4
  %56 = call i8* @allocate_bool_array(i32 %55)
  store i8* %56, i8** @ccl_has_nl, align 8
  %57 = load i32, i32* @INITIAL_MAX_CCL_TBL_SIZE, align 4
  store i32 %57, i32* @current_max_ccl_tbl_size, align 4
  %58 = load i32, i32* @current_max_ccl_tbl_size, align 4
  %59 = call i32 @allocate_Character_array(i32 %58)
  store i32 %59, i32* @ccltbl, align 4
  %60 = load i32, i32* @INITIAL_MAX_DFA_SIZE, align 4
  store i32 %60, i32* @current_max_dfa_size, align 4
  %61 = load i32, i32* @INITIAL_MAX_XPAIRS, align 4
  store i32 %61, i32* @current_max_xpairs, align 4
  %62 = load i32, i32* @current_max_xpairs, align 4
  %63 = call i8* @allocate_integer_array(i32 %62)
  store i8* %63, i8** @nxt, align 8
  %64 = load i32, i32* @current_max_xpairs, align 4
  %65 = call i8* @allocate_integer_array(i32 %64)
  store i8* %65, i8** @chk, align 8
  %66 = load i32, i32* @INITIAL_MAX_TEMPLATE_XPAIRS, align 4
  store i32 %66, i32* @current_max_template_xpairs, align 4
  %67 = load i32, i32* @current_max_template_xpairs, align 4
  %68 = call i8* @allocate_integer_array(i32 %67)
  store i8* %68, i8** @tnxt, align 8
  %69 = load i32, i32* @INITIAL_MAX_DFAS, align 4
  store i32 %69, i32* @current_max_dfas, align 4
  %70 = load i32, i32* @current_max_dfas, align 4
  %71 = call i8* @allocate_integer_array(i32 %70)
  store i8* %71, i8** @base, align 8
  %72 = load i32, i32* @current_max_dfas, align 4
  %73 = call i8* @allocate_integer_array(i32 %72)
  store i8* %73, i8** @def, align 8
  %74 = load i32, i32* @current_max_dfas, align 4
  %75 = call i8* @allocate_integer_array(i32 %74)
  store i8* %75, i8** @dfasiz, align 8
  %76 = load i32, i32* @current_max_dfas, align 4
  %77 = call i8* @allocate_integer_array(i32 %76)
  store i8* %77, i8** @accsiz, align 8
  %78 = load i32, i32* @current_max_dfas, align 4
  %79 = call i8* @allocate_integer_array(i32 %78)
  store i8* %79, i8** @dhash, align 8
  %80 = load i32, i32* @current_max_dfas, align 4
  %81 = call i32 @allocate_int_ptr_array(i32 %80)
  store i32 %81, i32* @dss, align 4
  %82 = load i32, i32* @current_max_dfas, align 4
  %83 = call i32 @allocate_dfaacc_union(i32 %82)
  store i32 %83, i32* @dfaacc, align 4
  store i32* null, i32** @nultrans, align 8
  ret void
}

declare dso_local i8* @allocate_integer_array(i32) #1

declare dso_local i8* @allocate_bool_array(i32) #1

declare dso_local i32 @allocate_char_ptr_array(i32) #1

declare dso_local i32 @allocate_Character_array(i32) #1

declare dso_local i32 @allocate_int_ptr_array(i32) #1

declare dso_local i32 @allocate_dfaacc_union(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
