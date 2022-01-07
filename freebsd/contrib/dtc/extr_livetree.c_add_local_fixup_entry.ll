; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_livetree.c_add_local_fixup_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_livetree.c_add_local_fixup_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dt_info = type { i32 }
%struct.property = type { i32 }
%struct.marker = type { i32 }
%struct.node = type { i8*, %struct.node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dt_info*, %struct.node*, %struct.node*, %struct.property*, %struct.marker*, %struct.node*)* @add_local_fixup_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_local_fixup_entry(%struct.dt_info* %0, %struct.node* %1, %struct.node* %2, %struct.property* %3, %struct.marker* %4, %struct.node* %5) #0 {
  %7 = alloca %struct.dt_info*, align 8
  %8 = alloca %struct.node*, align 8
  %9 = alloca %struct.node*, align 8
  %10 = alloca %struct.property*, align 8
  %11 = alloca %struct.marker*, align 8
  %12 = alloca %struct.node*, align 8
  %13 = alloca %struct.node*, align 8
  %14 = alloca %struct.node*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.dt_info* %0, %struct.dt_info** %7, align 8
  store %struct.node* %1, %struct.node** %8, align 8
  store %struct.node* %2, %struct.node** %9, align 8
  store %struct.property* %3, %struct.property** %10, align 8
  store %struct.marker* %4, %struct.marker** %11, align 8
  store %struct.node* %5, %struct.node** %12, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.node*, %struct.node** %9, align 8
  store %struct.node* %19, %struct.node** %13, align 8
  br label %20

20:                                               ; preds = %26, %6
  %21 = load %struct.node*, %struct.node** %13, align 8
  %22 = icmp ne %struct.node* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i32, i32* %18, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %18, align 4
  br label %26

26:                                               ; preds = %23
  %27 = load %struct.node*, %struct.node** %13, align 8
  %28 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 1
  %29 = load %struct.node*, %struct.node** %28, align 8
  store %struct.node* %29, %struct.node** %13, align 8
  br label %20

30:                                               ; preds = %20
  %31 = load i32, i32* %18, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 8, %32
  %34 = trunc i64 %33 to i32
  %35 = call i8** @xmalloc(i32 %34)
  store i8** %35, i8*** %16, align 8
  %36 = load %struct.node*, %struct.node** %9, align 8
  store %struct.node* %36, %struct.node** %13, align 8
  %37 = load i32, i32* %18, align 4
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %17, align 4
  br label %39

39:                                               ; preds = %50, %30
  %40 = load %struct.node*, %struct.node** %13, align 8
  %41 = icmp ne %struct.node* %40, null
  br i1 %41, label %42, label %56

42:                                               ; preds = %39
  %43 = load %struct.node*, %struct.node** %13, align 8
  %44 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i8**, i8*** %16, align 8
  %47 = load i32, i32* %17, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  store i8* %45, i8** %49, align 8
  br label %50

50:                                               ; preds = %42
  %51 = load %struct.node*, %struct.node** %13, align 8
  %52 = getelementptr inbounds %struct.node, %struct.node* %51, i32 0, i32 1
  %53 = load %struct.node*, %struct.node** %52, align 8
  store %struct.node* %53, %struct.node** %13, align 8
  %54 = load i32, i32* %17, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %17, align 4
  br label %39

56:                                               ; preds = %39
  %57 = load %struct.node*, %struct.node** %8, align 8
  store %struct.node* %57, %struct.node** %13, align 8
  store i32 1, i32* %17, align 4
  br label %58

58:                                               ; preds = %81, %56
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %18, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %85

62:                                               ; preds = %58
  %63 = load %struct.node*, %struct.node** %13, align 8
  %64 = load i8**, i8*** %16, align 8
  %65 = load i32, i32* %17, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = call %struct.node* @get_subnode(%struct.node* %63, i8* %68)
  store %struct.node* %69, %struct.node** %14, align 8
  %70 = load %struct.node*, %struct.node** %14, align 8
  %71 = icmp ne %struct.node* %70, null
  br i1 %71, label %80, label %72

72:                                               ; preds = %62
  %73 = load %struct.node*, %struct.node** %13, align 8
  %74 = load i8**, i8*** %16, align 8
  %75 = load i32, i32* %17, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = call %struct.node* @build_and_name_child_node(%struct.node* %73, i8* %78)
  store %struct.node* %79, %struct.node** %14, align 8
  br label %80

80:                                               ; preds = %72, %62
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %17, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %17, align 4
  %84 = load %struct.node*, %struct.node** %14, align 8
  store %struct.node* %84, %struct.node** %13, align 8
  br label %58

85:                                               ; preds = %58
  %86 = load i8**, i8*** %16, align 8
  %87 = call i32 @free(i8** %86)
  %88 = load %struct.marker*, %struct.marker** %11, align 8
  %89 = getelementptr inbounds %struct.marker, %struct.marker* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @cpu_to_fdt32(i32 %90)
  store i32 %91, i32* %15, align 4
  %92 = load %struct.node*, %struct.node** %13, align 8
  %93 = load %struct.property*, %struct.property** %10, align 8
  %94 = getelementptr inbounds %struct.property, %struct.property* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @append_to_property(%struct.node* %92, i32 %95, i32* %15, i32 4)
  ret void
}

declare dso_local i8** @xmalloc(i32) #1

declare dso_local %struct.node* @get_subnode(%struct.node*, i8*) #1

declare dso_local %struct.node* @build_and_name_child_node(%struct.node*, i8*) #1

declare dso_local i32 @free(i8**) #1

declare dso_local i32 @cpu_to_fdt32(i32) #1

declare dso_local i32 @append_to_property(%struct.node*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
