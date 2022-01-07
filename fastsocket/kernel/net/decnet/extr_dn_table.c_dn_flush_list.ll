; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_table.c_dn_flush_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_table.c_dn_flush_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_fib_node = type { i32, %struct.dn_fib_node* }
%struct.dn_hash = type { i32 }
%struct.dn_fib_info = type { i32 }

@DN_S_ZOMBIE = common dso_local global i32 0, align 4
@RTNH_F_DEAD = common dso_local global i32 0, align 4
@dn_fib_tables_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_fib_node**, i32, %struct.dn_hash*)* @dn_flush_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_flush_list(%struct.dn_fib_node** %0, i32 %1, %struct.dn_hash* %2) #0 {
  %4 = alloca %struct.dn_fib_node**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dn_hash*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dn_fib_node*, align 8
  %9 = alloca %struct.dn_fib_info*, align 8
  store %struct.dn_fib_node** %0, %struct.dn_fib_node*** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dn_hash* %2, %struct.dn_hash** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %44, %33, %3
  %11 = load %struct.dn_fib_node**, %struct.dn_fib_node*** %4, align 8
  %12 = load %struct.dn_fib_node*, %struct.dn_fib_node** %11, align 8
  store %struct.dn_fib_node* %12, %struct.dn_fib_node** %8, align 8
  %13 = icmp ne %struct.dn_fib_node* %12, null
  br i1 %13, label %14, label %47

14:                                               ; preds = %10
  %15 = load %struct.dn_fib_node*, %struct.dn_fib_node** %8, align 8
  %16 = call %struct.dn_fib_info* @DN_FIB_INFO(%struct.dn_fib_node* %15)
  store %struct.dn_fib_info* %16, %struct.dn_fib_info** %9, align 8
  %17 = load %struct.dn_fib_info*, %struct.dn_fib_info** %9, align 8
  %18 = icmp ne %struct.dn_fib_info* %17, null
  br i1 %18, label %19, label %44

19:                                               ; preds = %14
  %20 = load %struct.dn_fib_node*, %struct.dn_fib_node** %8, align 8
  %21 = getelementptr inbounds %struct.dn_fib_node, %struct.dn_fib_node* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @DN_S_ZOMBIE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %19
  %27 = load %struct.dn_fib_info*, %struct.dn_fib_info** %9, align 8
  %28 = getelementptr inbounds %struct.dn_fib_info, %struct.dn_fib_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @RTNH_F_DEAD, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %26, %19
  %34 = call i32 @write_lock_bh(i32* @dn_fib_tables_lock)
  %35 = load %struct.dn_fib_node*, %struct.dn_fib_node** %8, align 8
  %36 = getelementptr inbounds %struct.dn_fib_node, %struct.dn_fib_node* %35, i32 0, i32 1
  %37 = load %struct.dn_fib_node*, %struct.dn_fib_node** %36, align 8
  %38 = load %struct.dn_fib_node**, %struct.dn_fib_node*** %4, align 8
  store %struct.dn_fib_node* %37, %struct.dn_fib_node** %38, align 8
  %39 = call i32 @write_unlock_bh(i32* @dn_fib_tables_lock)
  %40 = load %struct.dn_fib_node*, %struct.dn_fib_node** %8, align 8
  %41 = call i32 @dn_free_node(%struct.dn_fib_node* %40)
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %10

44:                                               ; preds = %26, %14
  %45 = load %struct.dn_fib_node*, %struct.dn_fib_node** %8, align 8
  %46 = getelementptr inbounds %struct.dn_fib_node, %struct.dn_fib_node* %45, i32 0, i32 1
  store %struct.dn_fib_node** %46, %struct.dn_fib_node*** %4, align 8
  br label %10

47:                                               ; preds = %10
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local %struct.dn_fib_info* @DN_FIB_INFO(%struct.dn_fib_node*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @dn_free_node(%struct.dn_fib_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
