; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_conditional.c_cond_compute_av.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_conditional.c_cond_compute_av.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avtab = type { i32 }
%struct.avtab_key = type { i32 }
%struct.av_decision = type { i32, i32, i32 }
%struct.avtab_node = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@AVTAB_ALLOWED = common dso_local global i32 0, align 4
@AVTAB_ENABLED = common dso_local global i32 0, align 4
@AVTAB_AUDITDENY = common dso_local global i32 0, align 4
@AVTAB_AUDITALLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cond_compute_av(%struct.avtab* %0, %struct.avtab_key* %1, %struct.av_decision* %2) #0 {
  %4 = alloca %struct.avtab*, align 8
  %5 = alloca %struct.avtab_key*, align 8
  %6 = alloca %struct.av_decision*, align 8
  %7 = alloca %struct.avtab_node*, align 8
  store %struct.avtab* %0, %struct.avtab** %4, align 8
  store %struct.avtab_key* %1, %struct.avtab_key** %5, align 8
  store %struct.av_decision* %2, %struct.av_decision** %6, align 8
  %8 = load %struct.avtab*, %struct.avtab** %4, align 8
  %9 = icmp ne %struct.avtab* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %12 = icmp ne %struct.avtab_key* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load %struct.av_decision*, %struct.av_decision** %6, align 8
  %15 = icmp ne %struct.av_decision* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %10, %3
  br label %98

17:                                               ; preds = %13
  %18 = load %struct.avtab*, %struct.avtab** %4, align 8
  %19 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %20 = call %struct.avtab_node* @avtab_search_node(%struct.avtab* %18, %struct.avtab_key* %19)
  store %struct.avtab_node* %20, %struct.avtab_node** %7, align 8
  br label %21

21:                                               ; preds = %91, %17
  %22 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %23 = icmp ne %struct.avtab_node* %22, null
  br i1 %23, label %24, label %97

24:                                               ; preds = %21
  %25 = load i32, i32* @AVTAB_ALLOWED, align 4
  %26 = load i32, i32* @AVTAB_ENABLED, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %29 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @AVTAB_ALLOWED, align 4
  %33 = load i32, i32* @AVTAB_ENABLED, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp eq i32 %27, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %24
  %38 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %39 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.av_decision*, %struct.av_decision** %6, align 8
  %43 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %37, %24
  %47 = load i32, i32* @AVTAB_AUDITDENY, align 4
  %48 = load i32, i32* @AVTAB_ENABLED, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %51 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @AVTAB_AUDITDENY, align 4
  %55 = load i32, i32* @AVTAB_ENABLED, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %53, %56
  %58 = icmp eq i32 %49, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %46
  %60 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %61 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.av_decision*, %struct.av_decision** %6, align 8
  %65 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %59, %46
  %69 = load i32, i32* @AVTAB_AUDITALLOW, align 4
  %70 = load i32, i32* @AVTAB_ENABLED, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %73 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @AVTAB_AUDITALLOW, align 4
  %77 = load i32, i32* @AVTAB_ENABLED, align 4
  %78 = or i32 %76, %77
  %79 = and i32 %75, %78
  %80 = icmp eq i32 %71, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %68
  %82 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %83 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.av_decision*, %struct.av_decision** %6, align 8
  %87 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %81, %68
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %93 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %94 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call %struct.avtab_node* @avtab_search_node_next(%struct.avtab_node* %92, i32 %95)
  store %struct.avtab_node* %96, %struct.avtab_node** %7, align 8
  br label %21

97:                                               ; preds = %21
  br label %98

98:                                               ; preds = %97, %16
  ret void
}

declare dso_local %struct.avtab_node* @avtab_search_node(%struct.avtab*, %struct.avtab_key*) #1

declare dso_local %struct.avtab_node* @avtab_search_node_next(%struct.avtab_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
