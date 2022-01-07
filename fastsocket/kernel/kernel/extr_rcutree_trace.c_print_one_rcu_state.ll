; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rcutree_trace.c_print_one_rcu_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rcutree_trace.c_print_one_rcu_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.rcu_state = type { %struct.rcu_node*, i32, i32, i64, i64, i64, i32, i32, i32 }
%struct.rcu_node = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [75 x i8] c"c=%ld g=%ld s=%d jfq=%ld j=%x nfqs=%lu/nfqsng=%lu(%lu) fqlh=%lu oqlen=%ld\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@NUM_RCU_NODES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"%lx/%lx %d:%d ^%d    \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.rcu_state*)* @print_one_rcu_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_one_rcu_state(%struct.seq_file* %0, %struct.rcu_state* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.rcu_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rcu_node*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.rcu_state* %1, %struct.rcu_state** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = load %struct.rcu_state*, %struct.rcu_state** %4, align 8
  %9 = getelementptr inbounds %struct.rcu_state, %struct.rcu_state* %8, i32 0, i32 8
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.rcu_state*, %struct.rcu_state** %4, align 8
  %12 = getelementptr inbounds %struct.rcu_state, %struct.rcu_state* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.rcu_state*, %struct.rcu_state** %4, align 8
  %15 = getelementptr inbounds %struct.rcu_state, %struct.rcu_state* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.rcu_state*, %struct.rcu_state** %4, align 8
  %18 = getelementptr inbounds %struct.rcu_state, %struct.rcu_state* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @jiffies, align 4
  %21 = sext i32 %20 to i64
  %22 = sub nsw i64 %19, %21
  %23 = load i32, i32* @jiffies, align 4
  %24 = and i32 %23, 65535
  %25 = load %struct.rcu_state*, %struct.rcu_state** %4, align 8
  %26 = getelementptr inbounds %struct.rcu_state, %struct.rcu_state* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.rcu_state*, %struct.rcu_state** %4, align 8
  %29 = getelementptr inbounds %struct.rcu_state, %struct.rcu_state* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.rcu_state*, %struct.rcu_state** %4, align 8
  %32 = getelementptr inbounds %struct.rcu_state, %struct.rcu_state* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.rcu_state*, %struct.rcu_state** %4, align 8
  %35 = getelementptr inbounds %struct.rcu_state, %struct.rcu_state* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  %38 = load %struct.rcu_state*, %struct.rcu_state** %4, align 8
  %39 = getelementptr inbounds %struct.rcu_state, %struct.rcu_state* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.rcu_state*, %struct.rcu_state** %4, align 8
  %42 = getelementptr inbounds %struct.rcu_state, %struct.rcu_state* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (%struct.seq_file*, i8*, i32, i32, i32, i64, i32, ...) @seq_printf(%struct.seq_file* %7, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13, i32 %16, i64 %22, i32 %24, i64 %27, i64 %30, i64 %37, i32 %40, i32 %43)
  %45 = load %struct.rcu_state*, %struct.rcu_state** %4, align 8
  %46 = getelementptr inbounds %struct.rcu_state, %struct.rcu_state* %45, i32 0, i32 0
  %47 = load %struct.rcu_node*, %struct.rcu_node** %46, align 8
  %48 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %47, i64 0
  store %struct.rcu_node* %48, %struct.rcu_node** %6, align 8
  br label %49

49:                                               ; preds = %93, %2
  %50 = load %struct.rcu_node*, %struct.rcu_node** %6, align 8
  %51 = load %struct.rcu_state*, %struct.rcu_state** %4, align 8
  %52 = getelementptr inbounds %struct.rcu_state, %struct.rcu_state* %51, i32 0, i32 0
  %53 = load %struct.rcu_node*, %struct.rcu_node** %52, align 8
  %54 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %53, i64 0
  %55 = ptrtoint %struct.rcu_node* %50 to i64
  %56 = ptrtoint %struct.rcu_node* %54 to i64
  %57 = sub i64 %55, %56
  %58 = sdiv exact i64 %57, 24
  %59 = load i32, i32* @NUM_RCU_NODES, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %58, %60
  br i1 %61, label %62, label %96

62:                                               ; preds = %49
  %63 = load %struct.rcu_node*, %struct.rcu_node** %6, align 8
  %64 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %70 = call i32 @seq_puts(%struct.seq_file* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %71 = load %struct.rcu_node*, %struct.rcu_node** %6, align 8
  %72 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %68, %62
  %75 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %76 = load %struct.rcu_node*, %struct.rcu_node** %6, align 8
  %77 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.rcu_node*, %struct.rcu_node** %6, align 8
  %80 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.rcu_node*, %struct.rcu_node** %6, align 8
  %83 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.rcu_node*, %struct.rcu_node** %6, align 8
  %86 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = load %struct.rcu_node*, %struct.rcu_node** %6, align 8
  %90 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (%struct.seq_file*, i8*, i32, i32, i32, i64, i32, ...) @seq_printf(%struct.seq_file* %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %81, i32 %84, i64 %88, i32 %91)
  br label %93

93:                                               ; preds = %74
  %94 = load %struct.rcu_node*, %struct.rcu_node** %6, align 8
  %95 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %94, i32 1
  store %struct.rcu_node* %95, %struct.rcu_node** %6, align 8
  br label %49

96:                                               ; preds = %49
  %97 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %98 = call i32 @seq_puts(%struct.seq_file* %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i64, i32, ...) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
