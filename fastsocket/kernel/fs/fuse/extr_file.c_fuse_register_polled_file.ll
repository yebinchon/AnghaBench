; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_register_polled_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_register_polled_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32, i32 }
%struct.fuse_file = type { i32, i32 }
%struct.rb_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_conn*, %struct.fuse_file*)* @fuse_register_polled_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_register_polled_file(%struct.fuse_conn* %0, %struct.fuse_file* %1) #0 {
  %3 = alloca %struct.fuse_conn*, align 8
  %4 = alloca %struct.fuse_file*, align 8
  %5 = alloca %struct.rb_node**, align 8
  %6 = alloca %struct.rb_node*, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %3, align 8
  store %struct.fuse_file* %1, %struct.fuse_file** %4, align 8
  %7 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %8 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %11 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %10, i32 0, i32 0
  %12 = call i64 @RB_EMPTY_NODE(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %2
  %15 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %16 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %17 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.rb_node** @fuse_find_polled_node(%struct.fuse_conn* %15, i32 %18, %struct.rb_node** %6)
  store %struct.rb_node** %19, %struct.rb_node*** %5, align 8
  %20 = load %struct.rb_node**, %struct.rb_node*** %5, align 8
  %21 = load %struct.rb_node*, %struct.rb_node** %20, align 8
  %22 = call i32 @BUG_ON(%struct.rb_node* %21)
  %23 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %24 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %23, i32 0, i32 0
  %25 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %26 = load %struct.rb_node**, %struct.rb_node*** %5, align 8
  %27 = call i32 @rb_link_node(i32* %24, %struct.rb_node* %25, %struct.rb_node** %26)
  %28 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %29 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %28, i32 0, i32 0
  %30 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %31 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %30, i32 0, i32 1
  %32 = call i32 @rb_insert_color(i32* %29, i32* %31)
  br label %33

33:                                               ; preds = %14, %2
  %34 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %35 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock(i32* %35)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @RB_EMPTY_NODE(i32*) #1

declare dso_local %struct.rb_node** @fuse_find_polled_node(%struct.fuse_conn*, i32, %struct.rb_node**) #1

declare dso_local i32 @BUG_ON(%struct.rb_node*) #1

declare dso_local i32 @rb_link_node(i32*, %struct.rb_node*, %struct.rb_node**) #1

declare dso_local i32 @rb_insert_color(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
