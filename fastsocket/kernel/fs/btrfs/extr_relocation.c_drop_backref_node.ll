; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_relocation.c_drop_backref_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_relocation.c_drop_backref_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backref_cache = type { i32 }
%struct.backref_node = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.backref_cache*, %struct.backref_node*)* @drop_backref_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drop_backref_node(%struct.backref_cache* %0, %struct.backref_node* %1) #0 {
  %3 = alloca %struct.backref_cache*, align 8
  %4 = alloca %struct.backref_node*, align 8
  store %struct.backref_cache* %0, %struct.backref_cache** %3, align 8
  store %struct.backref_node* %1, %struct.backref_node** %4, align 8
  %5 = load %struct.backref_node*, %struct.backref_node** %4, align 8
  %6 = getelementptr inbounds %struct.backref_node, %struct.backref_node* %5, i32 0, i32 3
  %7 = call i32 @list_empty(i32* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.backref_node*, %struct.backref_node** %4, align 8
  %13 = call i32 @drop_node_buffer(%struct.backref_node* %12)
  %14 = load %struct.backref_node*, %struct.backref_node** %4, align 8
  %15 = getelementptr inbounds %struct.backref_node, %struct.backref_node* %14, i32 0, i32 2
  %16 = call i32 @list_del(i32* %15)
  %17 = load %struct.backref_node*, %struct.backref_node** %4, align 8
  %18 = getelementptr inbounds %struct.backref_node, %struct.backref_node* %17, i32 0, i32 1
  %19 = call i32 @list_del(i32* %18)
  %20 = load %struct.backref_node*, %struct.backref_node** %4, align 8
  %21 = getelementptr inbounds %struct.backref_node, %struct.backref_node* %20, i32 0, i32 0
  %22 = call i32 @RB_EMPTY_NODE(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load %struct.backref_node*, %struct.backref_node** %4, align 8
  %26 = getelementptr inbounds %struct.backref_node, %struct.backref_node* %25, i32 0, i32 0
  %27 = load %struct.backref_cache*, %struct.backref_cache** %3, align 8
  %28 = getelementptr inbounds %struct.backref_cache, %struct.backref_cache* %27, i32 0, i32 0
  %29 = call i32 @rb_erase(i32* %26, i32* %28)
  br label %30

30:                                               ; preds = %24, %2
  %31 = load %struct.backref_cache*, %struct.backref_cache** %3, align 8
  %32 = load %struct.backref_node*, %struct.backref_node** %4, align 8
  %33 = call i32 @free_backref_node(%struct.backref_cache* %31, %struct.backref_node* %32)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @drop_node_buffer(%struct.backref_node*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @RB_EMPTY_NODE(i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @free_backref_node(%struct.backref_cache*, %struct.backref_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
