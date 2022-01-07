; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_ebitmap.h_ebitmap_next_positive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_ebitmap.h_ebitmap_next_positive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebitmap = type { i32 }
%struct.ebitmap_node = type { i32, i32, %struct.ebitmap_node* }

@EBITMAP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ebitmap*, %struct.ebitmap_node**, i32)* @ebitmap_next_positive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebitmap_next_positive(%struct.ebitmap* %0, %struct.ebitmap_node** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ebitmap*, align 8
  %6 = alloca %struct.ebitmap_node**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ebitmap* %0, %struct.ebitmap** %5, align 8
  store %struct.ebitmap_node** %1, %struct.ebitmap_node*** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ebitmap_node**, %struct.ebitmap_node*** %6, align 8
  %10 = load %struct.ebitmap_node*, %struct.ebitmap_node** %9, align 8
  %11 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @EBITMAP_SIZE, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.ebitmap_node**, %struct.ebitmap_node*** %6, align 8
  %16 = load %struct.ebitmap_node*, %struct.ebitmap_node** %15, align 8
  %17 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub i32 %14, %18
  %20 = add i32 %19, 1
  %21 = call i32 @find_next_bit(i32 %12, i32 %13, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @EBITMAP_SIZE, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.ebitmap_node**, %struct.ebitmap_node*** %6, align 8
  %28 = load %struct.ebitmap_node*, %struct.ebitmap_node** %27, align 8
  %29 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add i32 %26, %30
  store i32 %31, i32* %4, align 4
  br label %69

32:                                               ; preds = %3
  %33 = load %struct.ebitmap_node**, %struct.ebitmap_node*** %6, align 8
  %34 = load %struct.ebitmap_node*, %struct.ebitmap_node** %33, align 8
  %35 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %34, i32 0, i32 2
  %36 = load %struct.ebitmap_node*, %struct.ebitmap_node** %35, align 8
  %37 = load %struct.ebitmap_node**, %struct.ebitmap_node*** %6, align 8
  store %struct.ebitmap_node* %36, %struct.ebitmap_node** %37, align 8
  br label %38

38:                                               ; preds = %60, %32
  %39 = load %struct.ebitmap_node**, %struct.ebitmap_node*** %6, align 8
  %40 = load %struct.ebitmap_node*, %struct.ebitmap_node** %39, align 8
  %41 = icmp ne %struct.ebitmap_node* %40, null
  br i1 %41, label %42, label %66

42:                                               ; preds = %38
  %43 = load %struct.ebitmap_node**, %struct.ebitmap_node*** %6, align 8
  %44 = load %struct.ebitmap_node*, %struct.ebitmap_node** %43, align 8
  %45 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @EBITMAP_SIZE, align 4
  %48 = call i32 @find_first_bit(i32 %46, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @EBITMAP_SIZE, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %42
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.ebitmap_node**, %struct.ebitmap_node*** %6, align 8
  %55 = load %struct.ebitmap_node*, %struct.ebitmap_node** %54, align 8
  %56 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add i32 %53, %57
  store i32 %58, i32* %4, align 4
  br label %69

59:                                               ; preds = %42
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.ebitmap_node**, %struct.ebitmap_node*** %6, align 8
  %62 = load %struct.ebitmap_node*, %struct.ebitmap_node** %61, align 8
  %63 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %62, i32 0, i32 2
  %64 = load %struct.ebitmap_node*, %struct.ebitmap_node** %63, align 8
  %65 = load %struct.ebitmap_node**, %struct.ebitmap_node*** %6, align 8
  store %struct.ebitmap_node* %64, %struct.ebitmap_node** %65, align 8
  br label %38

66:                                               ; preds = %38
  %67 = load %struct.ebitmap*, %struct.ebitmap** %5, align 8
  %68 = call i32 @ebitmap_length(%struct.ebitmap* %67)
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %66, %52, %25
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @find_next_bit(i32, i32, i32) #1

declare dso_local i32 @find_first_bit(i32, i32) #1

declare dso_local i32 @ebitmap_length(%struct.ebitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
