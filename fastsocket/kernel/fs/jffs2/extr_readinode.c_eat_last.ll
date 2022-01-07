; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_readinode.c_eat_last.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_readinode.c_eat_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i32, %struct.rb_node*, %struct.rb_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rb_root*, %struct.rb_node*)* @eat_last to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eat_last(%struct.rb_root* %0, %struct.rb_node* %1) #0 {
  %3 = alloca %struct.rb_root*, align 8
  %4 = alloca %struct.rb_node*, align 8
  %5 = alloca %struct.rb_node*, align 8
  %6 = alloca %struct.rb_node**, align 8
  store %struct.rb_root* %0, %struct.rb_root** %3, align 8
  store %struct.rb_node* %1, %struct.rb_node** %4, align 8
  %7 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %8 = call %struct.rb_node* @rb_parent(%struct.rb_node* %7)
  store %struct.rb_node* %8, %struct.rb_node** %5, align 8
  %9 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %10 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %9, i32 0, i32 2
  %11 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %12 = call i32 @BUG_ON(%struct.rb_node* %11)
  %13 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %14 = icmp ne %struct.rb_node* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load %struct.rb_root*, %struct.rb_root** %3, align 8
  %17 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %16, i32 0, i32 0
  store %struct.rb_node** %17, %struct.rb_node*** %6, align 8
  br label %31

18:                                               ; preds = %2
  %19 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %20 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %21 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %20, i32 0, i32 1
  %22 = load %struct.rb_node*, %struct.rb_node** %21, align 8
  %23 = icmp eq %struct.rb_node* %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %26 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %25, i32 0, i32 1
  store %struct.rb_node** %26, %struct.rb_node*** %6, align 8
  br label %30

27:                                               ; preds = %18
  %28 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %29 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %28, i32 0, i32 2
  store %struct.rb_node** %29, %struct.rb_node*** %6, align 8
  br label %30

30:                                               ; preds = %27, %24
  br label %31

31:                                               ; preds = %30, %15
  %32 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %33 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %32, i32 0, i32 1
  %34 = load %struct.rb_node*, %struct.rb_node** %33, align 8
  %35 = load %struct.rb_node**, %struct.rb_node*** %6, align 8
  store %struct.rb_node* %34, %struct.rb_node** %35, align 8
  %36 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %37 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %36, i32 0, i32 1
  %38 = load %struct.rb_node*, %struct.rb_node** %37, align 8
  %39 = icmp ne %struct.rb_node* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %31
  %41 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %42 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %45 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %44, i32 0, i32 1
  %46 = load %struct.rb_node*, %struct.rb_node** %45, align 8
  %47 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 8
  br label %48

48:                                               ; preds = %40, %31
  ret void
}

declare dso_local %struct.rb_node* @rb_parent(%struct.rb_node*) #1

declare dso_local i32 @BUG_ON(%struct.rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
