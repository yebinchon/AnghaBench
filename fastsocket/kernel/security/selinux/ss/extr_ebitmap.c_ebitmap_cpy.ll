; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_ebitmap.c_ebitmap_cpy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_ebitmap.c_ebitmap_cpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebitmap = type { i32, %struct.ebitmap_node* }
%struct.ebitmap_node = type { %struct.ebitmap_node*, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBITMAP_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ebitmap_cpy(%struct.ebitmap* %0, %struct.ebitmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ebitmap*, align 8
  %5 = alloca %struct.ebitmap*, align 8
  %6 = alloca %struct.ebitmap_node*, align 8
  %7 = alloca %struct.ebitmap_node*, align 8
  %8 = alloca %struct.ebitmap_node*, align 8
  store %struct.ebitmap* %0, %struct.ebitmap** %4, align 8
  store %struct.ebitmap* %1, %struct.ebitmap** %5, align 8
  %9 = load %struct.ebitmap*, %struct.ebitmap** %4, align 8
  %10 = call i32 @ebitmap_init(%struct.ebitmap* %9)
  %11 = load %struct.ebitmap*, %struct.ebitmap** %5, align 8
  %12 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %11, i32 0, i32 1
  %13 = load %struct.ebitmap_node*, %struct.ebitmap_node** %12, align 8
  store %struct.ebitmap_node* %13, %struct.ebitmap_node** %6, align 8
  store %struct.ebitmap_node* null, %struct.ebitmap_node** %8, align 8
  br label %14

14:                                               ; preds = %54, %2
  %15 = load %struct.ebitmap_node*, %struct.ebitmap_node** %6, align 8
  %16 = icmp ne %struct.ebitmap_node* %15, null
  br i1 %16, label %17, label %59

17:                                               ; preds = %14
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call %struct.ebitmap_node* @kzalloc(i32 16, i32 %18)
  store %struct.ebitmap_node* %19, %struct.ebitmap_node** %7, align 8
  %20 = load %struct.ebitmap_node*, %struct.ebitmap_node** %7, align 8
  %21 = icmp ne %struct.ebitmap_node* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.ebitmap*, %struct.ebitmap** %4, align 8
  %24 = call i32 @ebitmap_destroy(%struct.ebitmap* %23)
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %65

27:                                               ; preds = %17
  %28 = load %struct.ebitmap_node*, %struct.ebitmap_node** %6, align 8
  %29 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ebitmap_node*, %struct.ebitmap_node** %7, align 8
  %32 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ebitmap_node*, %struct.ebitmap_node** %7, align 8
  %34 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ebitmap_node*, %struct.ebitmap_node** %6, align 8
  %37 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @EBITMAP_SIZE, align 4
  %40 = sdiv i32 %39, 8
  %41 = call i32 @memcpy(i32 %35, i32 %38, i32 %40)
  %42 = load %struct.ebitmap_node*, %struct.ebitmap_node** %7, align 8
  %43 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %42, i32 0, i32 0
  store %struct.ebitmap_node* null, %struct.ebitmap_node** %43, align 8
  %44 = load %struct.ebitmap_node*, %struct.ebitmap_node** %8, align 8
  %45 = icmp ne %struct.ebitmap_node* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %27
  %47 = load %struct.ebitmap_node*, %struct.ebitmap_node** %7, align 8
  %48 = load %struct.ebitmap_node*, %struct.ebitmap_node** %8, align 8
  %49 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %48, i32 0, i32 0
  store %struct.ebitmap_node* %47, %struct.ebitmap_node** %49, align 8
  br label %54

50:                                               ; preds = %27
  %51 = load %struct.ebitmap_node*, %struct.ebitmap_node** %7, align 8
  %52 = load %struct.ebitmap*, %struct.ebitmap** %4, align 8
  %53 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %52, i32 0, i32 1
  store %struct.ebitmap_node* %51, %struct.ebitmap_node** %53, align 8
  br label %54

54:                                               ; preds = %50, %46
  %55 = load %struct.ebitmap_node*, %struct.ebitmap_node** %7, align 8
  store %struct.ebitmap_node* %55, %struct.ebitmap_node** %8, align 8
  %56 = load %struct.ebitmap_node*, %struct.ebitmap_node** %6, align 8
  %57 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %56, i32 0, i32 0
  %58 = load %struct.ebitmap_node*, %struct.ebitmap_node** %57, align 8
  store %struct.ebitmap_node* %58, %struct.ebitmap_node** %6, align 8
  br label %14

59:                                               ; preds = %14
  %60 = load %struct.ebitmap*, %struct.ebitmap** %5, align 8
  %61 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ebitmap*, %struct.ebitmap** %4, align 8
  %64 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %59, %22
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @ebitmap_init(%struct.ebitmap*) #1

declare dso_local %struct.ebitmap_node* @kzalloc(i32, i32) #1

declare dso_local i32 @ebitmap_destroy(%struct.ebitmap*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
