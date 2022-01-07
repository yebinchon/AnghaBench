; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_web.c_unionfind_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_web.c_unionfind_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.web_entry = type { %struct.web_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.web_entry* @unionfind_root(%struct.web_entry* %0) #0 {
  %2 = alloca %struct.web_entry*, align 8
  %3 = alloca %struct.web_entry*, align 8
  %4 = alloca %struct.web_entry*, align 8
  store %struct.web_entry* %0, %struct.web_entry** %2, align 8
  %5 = load %struct.web_entry*, %struct.web_entry** %2, align 8
  store %struct.web_entry* %5, %struct.web_entry** %3, align 8
  br label %6

6:                                                ; preds = %11, %1
  %7 = load %struct.web_entry*, %struct.web_entry** %2, align 8
  %8 = getelementptr inbounds %struct.web_entry, %struct.web_entry* %7, i32 0, i32 0
  %9 = load %struct.web_entry*, %struct.web_entry** %8, align 8
  %10 = icmp ne %struct.web_entry* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load %struct.web_entry*, %struct.web_entry** %2, align 8
  %13 = getelementptr inbounds %struct.web_entry, %struct.web_entry* %12, i32 0, i32 0
  %14 = load %struct.web_entry*, %struct.web_entry** %13, align 8
  store %struct.web_entry* %14, %struct.web_entry** %2, align 8
  br label %6

15:                                               ; preds = %6
  br label %16

16:                                               ; preds = %21, %15
  %17 = load %struct.web_entry*, %struct.web_entry** %3, align 8
  %18 = getelementptr inbounds %struct.web_entry, %struct.web_entry* %17, i32 0, i32 0
  %19 = load %struct.web_entry*, %struct.web_entry** %18, align 8
  %20 = icmp ne %struct.web_entry* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.web_entry*, %struct.web_entry** %3, align 8
  %23 = getelementptr inbounds %struct.web_entry, %struct.web_entry* %22, i32 0, i32 0
  %24 = load %struct.web_entry*, %struct.web_entry** %23, align 8
  store %struct.web_entry* %24, %struct.web_entry** %4, align 8
  %25 = load %struct.web_entry*, %struct.web_entry** %2, align 8
  %26 = load %struct.web_entry*, %struct.web_entry** %3, align 8
  %27 = getelementptr inbounds %struct.web_entry, %struct.web_entry* %26, i32 0, i32 0
  store %struct.web_entry* %25, %struct.web_entry** %27, align 8
  %28 = load %struct.web_entry*, %struct.web_entry** %4, align 8
  store %struct.web_entry* %28, %struct.web_entry** %3, align 8
  br label %16

29:                                               ; preds = %16
  %30 = load %struct.web_entry*, %struct.web_entry** %2, align 8
  ret %struct.web_entry* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
