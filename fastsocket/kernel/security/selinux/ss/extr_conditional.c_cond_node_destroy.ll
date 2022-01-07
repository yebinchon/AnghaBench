; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_conditional.c_cond_node_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_conditional.c_cond_node_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cond_node = type { i32, i32, %struct.cond_node*, %struct.cond_node* }
%struct.cond_expr = type { i32, i32, %struct.cond_expr*, %struct.cond_expr* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cond_node*)* @cond_node_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cond_node_destroy(%struct.cond_node* %0) #0 {
  %2 = alloca %struct.cond_node*, align 8
  %3 = alloca %struct.cond_expr*, align 8
  %4 = alloca %struct.cond_expr*, align 8
  store %struct.cond_node* %0, %struct.cond_node** %2, align 8
  %5 = load %struct.cond_node*, %struct.cond_node** %2, align 8
  %6 = getelementptr inbounds %struct.cond_node, %struct.cond_node* %5, i32 0, i32 3
  %7 = load %struct.cond_node*, %struct.cond_node** %6, align 8
  %8 = bitcast %struct.cond_node* %7 to %struct.cond_expr*
  store %struct.cond_expr* %8, %struct.cond_expr** %3, align 8
  br label %9

9:                                                ; preds = %19, %1
  %10 = load %struct.cond_expr*, %struct.cond_expr** %3, align 8
  %11 = icmp ne %struct.cond_expr* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load %struct.cond_expr*, %struct.cond_expr** %3, align 8
  %14 = getelementptr inbounds %struct.cond_expr, %struct.cond_expr* %13, i32 0, i32 2
  %15 = load %struct.cond_expr*, %struct.cond_expr** %14, align 8
  store %struct.cond_expr* %15, %struct.cond_expr** %4, align 8
  %16 = load %struct.cond_expr*, %struct.cond_expr** %3, align 8
  %17 = bitcast %struct.cond_expr* %16 to %struct.cond_node*
  %18 = call i32 @kfree(%struct.cond_node* %17)
  br label %19

19:                                               ; preds = %12
  %20 = load %struct.cond_expr*, %struct.cond_expr** %4, align 8
  store %struct.cond_expr* %20, %struct.cond_expr** %3, align 8
  br label %9

21:                                               ; preds = %9
  %22 = load %struct.cond_node*, %struct.cond_node** %2, align 8
  %23 = getelementptr inbounds %struct.cond_node, %struct.cond_node* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cond_av_list_destroy(i32 %24)
  %26 = load %struct.cond_node*, %struct.cond_node** %2, align 8
  %27 = getelementptr inbounds %struct.cond_node, %struct.cond_node* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @cond_av_list_destroy(i32 %28)
  %30 = load %struct.cond_node*, %struct.cond_node** %2, align 8
  %31 = call i32 @kfree(%struct.cond_node* %30)
  ret void
}

declare dso_local i32 @kfree(%struct.cond_node*) #1

declare dso_local i32 @cond_av_list_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
