; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_mpol_rebind_policy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_mpol_rebind_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.mempolicy*, i32*, i32)* }
%struct.mempolicy = type { i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MPOL_REBIND_STEP1 = common dso_local global i32 0, align 4
@MPOL_F_REBINDING = common dso_local global i32 0, align 4
@MPOL_REBIND_STEP2 = common dso_local global i32 0, align 4
@MPOL_REBIND_NSTEP = common dso_local global i32 0, align 4
@mpol_ops = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mempolicy*, i32*, i32)* @mpol_rebind_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpol_rebind_policy(%struct.mempolicy* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mempolicy*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.mempolicy* %0, %struct.mempolicy** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %8 = icmp ne %struct.mempolicy* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %93

10:                                               ; preds = %3
  %11 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %12 = call i32 @mpol_store_user_nodemask(%struct.mempolicy* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %19 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @nodes_equal(i32 %21, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %93

27:                                               ; preds = %17, %14, %10
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @MPOL_REBIND_STEP1, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %33 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MPOL_F_REBINDING, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %93

39:                                               ; preds = %31, %27
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @MPOL_REBIND_STEP2, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %45 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MPOL_F_REBINDING, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %43
  %51 = call i32 (...) @BUG()
  br label %52

52:                                               ; preds = %50, %43, %39
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @MPOL_REBIND_STEP1, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i32, i32* @MPOL_F_REBINDING, align 4
  %58 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %59 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %81

62:                                               ; preds = %52
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @MPOL_REBIND_STEP2, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i32, i32* @MPOL_F_REBINDING, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %70 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %80

73:                                               ; preds = %62
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @MPOL_REBIND_NSTEP, align 4
  %76 = icmp uge i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = call i32 (...) @BUG()
  br label %79

79:                                               ; preds = %77, %73
  br label %80

80:                                               ; preds = %79, %66
  br label %81

81:                                               ; preds = %80, %56
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mpol_ops, align 8
  %83 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %84 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32 (%struct.mempolicy*, i32*, i32)*, i32 (%struct.mempolicy*, i32*, i32)** %87, align 8
  %89 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 %88(%struct.mempolicy* %89, i32* %90, i32 %91)
  br label %93

93:                                               ; preds = %81, %38, %26, %9
  ret void
}

declare dso_local i32 @mpol_store_user_nodemask(%struct.mempolicy*) #1

declare dso_local i64 @nodes_equal(i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
