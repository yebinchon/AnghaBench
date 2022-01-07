; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_rbtree.c_rb_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_rbtree.c_rb_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rb_node* @rb_next(%struct.rb_node* %0) #0 {
  %2 = alloca %struct.rb_node*, align 8
  %3 = alloca %struct.rb_node*, align 8
  %4 = alloca %struct.rb_node*, align 8
  store %struct.rb_node* %0, %struct.rb_node** %3, align 8
  %5 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %6 = call %struct.rb_node* @rb_parent(%struct.rb_node* %5)
  %7 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %8 = icmp eq %struct.rb_node* %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.rb_node* null, %struct.rb_node** %2, align 8
  br label %47

10:                                               ; preds = %1
  %11 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %12 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %11, i32 0, i32 0
  %13 = load %struct.rb_node*, %struct.rb_node** %12, align 8
  %14 = icmp ne %struct.rb_node* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %10
  %16 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %17 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %16, i32 0, i32 0
  %18 = load %struct.rb_node*, %struct.rb_node** %17, align 8
  store %struct.rb_node* %18, %struct.rb_node** %3, align 8
  br label %19

19:                                               ; preds = %24, %15
  %20 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %21 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %20, i32 0, i32 1
  %22 = load %struct.rb_node*, %struct.rb_node** %21, align 8
  %23 = icmp ne %struct.rb_node* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %26 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %25, i32 0, i32 1
  %27 = load %struct.rb_node*, %struct.rb_node** %26, align 8
  store %struct.rb_node* %27, %struct.rb_node** %3, align 8
  br label %19

28:                                               ; preds = %19
  %29 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  store %struct.rb_node* %29, %struct.rb_node** %2, align 8
  br label %47

30:                                               ; preds = %10
  br label %31

31:                                               ; preds = %43, %30
  %32 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %33 = call %struct.rb_node* @rb_parent(%struct.rb_node* %32)
  store %struct.rb_node* %33, %struct.rb_node** %4, align 8
  %34 = icmp ne %struct.rb_node* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %37 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %38 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %37, i32 0, i32 0
  %39 = load %struct.rb_node*, %struct.rb_node** %38, align 8
  %40 = icmp eq %struct.rb_node* %36, %39
  br label %41

41:                                               ; preds = %35, %31
  %42 = phi i1 [ false, %31 ], [ %40, %35 ]
  br i1 %42, label %43, label %45

43:                                               ; preds = %41
  %44 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  store %struct.rb_node* %44, %struct.rb_node** %3, align 8
  br label %31

45:                                               ; preds = %41
  %46 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  store %struct.rb_node* %46, %struct.rb_node** %2, align 8
  br label %47

47:                                               ; preds = %45, %28, %9
  %48 = load %struct.rb_node*, %struct.rb_node** %2, align 8
  ret %struct.rb_node* %48
}

declare dso_local %struct.rb_node* @rb_parent(%struct.rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
