; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_af_rose.c_rose_new_lci.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_af_rose.c_rose_new_lci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rose_neigh = type { i64 }

@sysctl_rose_maximum_vcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rose_new_lci(%struct.rose_neigh* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rose_neigh*, align 8
  %4 = alloca i32, align 4
  store %struct.rose_neigh* %0, %struct.rose_neigh** %3, align 8
  %5 = load %struct.rose_neigh*, %struct.rose_neigh** %3, align 8
  %6 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %1
  store i32 1, i32* %4, align 4
  br label %10

10:                                               ; preds = %27, %9
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @sysctl_rose_maximum_vcs, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.rose_neigh*, %struct.rose_neigh** %3, align 8
  %17 = call i32* @rose_find_socket(i32 %15, %struct.rose_neigh* %16)
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.rose_neigh*, %struct.rose_neigh** %3, align 8
  %22 = call i32* @rose_route_free_lci(i32 %20, %struct.rose_neigh* %21)
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %54

26:                                               ; preds = %19, %14
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %10

30:                                               ; preds = %10
  br label %53

31:                                               ; preds = %1
  %32 = load i32, i32* @sysctl_rose_maximum_vcs, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %49, %31
  %34 = load i32, i32* %4, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.rose_neigh*, %struct.rose_neigh** %3, align 8
  %39 = call i32* @rose_find_socket(i32 %37, %struct.rose_neigh* %38)
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.rose_neigh*, %struct.rose_neigh** %3, align 8
  %44 = call i32* @rose_route_free_lci(i32 %42, %struct.rose_neigh* %43)
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %54

48:                                               ; preds = %41, %36
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %4, align 4
  br label %33

52:                                               ; preds = %33
  br label %53

53:                                               ; preds = %52, %30
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %46, %24
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32* @rose_find_socket(i32, %struct.rose_neigh*) #1

declare dso_local i32* @rose_route_free_lci(i32, %struct.rose_neigh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
