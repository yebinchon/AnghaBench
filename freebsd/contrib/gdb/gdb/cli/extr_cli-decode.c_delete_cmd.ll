; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_delete_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_delete_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { %struct.cmd_list_element*, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_cmd(i8* %0, %struct.cmd_list_element** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cmd_list_element**, align 8
  %5 = alloca %struct.cmd_list_element*, align 8
  %6 = alloca %struct.cmd_list_element*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.cmd_list_element** %1, %struct.cmd_list_element*** %4, align 8
  br label %7

7:                                                ; preds = %45, %2
  %8 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %4, align 8
  %9 = load %struct.cmd_list_element*, %struct.cmd_list_element** %8, align 8
  %10 = icmp ne %struct.cmd_list_element* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %4, align 8
  %13 = load %struct.cmd_list_element*, %struct.cmd_list_element** %12, align 8
  %14 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @strcmp(i32 %15, i8* %16)
  %18 = icmp eq i64 %17, 0
  br label %19

19:                                               ; preds = %11, %7
  %20 = phi i1 [ false, %7 ], [ %18, %11 ]
  br i1 %20, label %21, label %55

21:                                               ; preds = %19
  %22 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %4, align 8
  %23 = load %struct.cmd_list_element*, %struct.cmd_list_element** %22, align 8
  %24 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %4, align 8
  %29 = load %struct.cmd_list_element*, %struct.cmd_list_element** %28, align 8
  %30 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %27, %21
  %34 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %4, align 8
  %35 = load %struct.cmd_list_element*, %struct.cmd_list_element** %34, align 8
  %36 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = icmp ne %struct.TYPE_4__* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %4, align 8
  %41 = load %struct.cmd_list_element*, %struct.cmd_list_element** %40, align 8
  %42 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %39, %33
  %46 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %4, align 8
  %47 = load %struct.cmd_list_element*, %struct.cmd_list_element** %46, align 8
  %48 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %47, i32 0, i32 0
  %49 = load %struct.cmd_list_element*, %struct.cmd_list_element** %48, align 8
  store %struct.cmd_list_element* %49, %struct.cmd_list_element** %6, align 8
  %50 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %4, align 8
  %51 = load %struct.cmd_list_element*, %struct.cmd_list_element** %50, align 8
  %52 = call i32 @xfree(%struct.cmd_list_element* %51)
  %53 = load %struct.cmd_list_element*, %struct.cmd_list_element** %6, align 8
  %54 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %4, align 8
  store %struct.cmd_list_element* %53, %struct.cmd_list_element** %54, align 8
  br label %7

55:                                               ; preds = %19
  %56 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %4, align 8
  %57 = load %struct.cmd_list_element*, %struct.cmd_list_element** %56, align 8
  %58 = icmp ne %struct.cmd_list_element* %57, null
  br i1 %58, label %59, label %123

59:                                               ; preds = %55
  %60 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %4, align 8
  %61 = load %struct.cmd_list_element*, %struct.cmd_list_element** %60, align 8
  store %struct.cmd_list_element* %61, %struct.cmd_list_element** %5, align 8
  br label %62

62:                                               ; preds = %121, %59
  %63 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %64 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %63, i32 0, i32 0
  %65 = load %struct.cmd_list_element*, %struct.cmd_list_element** %64, align 8
  %66 = icmp ne %struct.cmd_list_element* %65, null
  br i1 %66, label %67, label %122

67:                                               ; preds = %62
  %68 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %69 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %68, i32 0, i32 0
  %70 = load %struct.cmd_list_element*, %struct.cmd_list_element** %69, align 8
  %71 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load i8*, i8** %3, align 8
  %74 = call i64 @strcmp(i32 %72, i8* %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %117

76:                                               ; preds = %67
  %77 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %78 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %77, i32 0, i32 0
  %79 = load %struct.cmd_list_element*, %struct.cmd_list_element** %78, align 8
  %80 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %79, i32 0, i32 2
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = icmp ne %struct.TYPE_3__* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %76
  %84 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %85 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %84, i32 0, i32 0
  %86 = load %struct.cmd_list_element*, %struct.cmd_list_element** %85, align 8
  %87 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %86, i32 0, i32 2
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %83, %76
  %91 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %92 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %91, i32 0, i32 0
  %93 = load %struct.cmd_list_element*, %struct.cmd_list_element** %92, align 8
  %94 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %93, i32 0, i32 1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = icmp ne %struct.TYPE_4__* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %90
  %98 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %99 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %98, i32 0, i32 0
  %100 = load %struct.cmd_list_element*, %struct.cmd_list_element** %99, align 8
  %101 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %100, i32 0, i32 1
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %97, %90
  %105 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %106 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %105, i32 0, i32 0
  %107 = load %struct.cmd_list_element*, %struct.cmd_list_element** %106, align 8
  %108 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %107, i32 0, i32 0
  %109 = load %struct.cmd_list_element*, %struct.cmd_list_element** %108, align 8
  store %struct.cmd_list_element* %109, %struct.cmd_list_element** %6, align 8
  %110 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %111 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %110, i32 0, i32 0
  %112 = load %struct.cmd_list_element*, %struct.cmd_list_element** %111, align 8
  %113 = call i32 @xfree(%struct.cmd_list_element* %112)
  %114 = load %struct.cmd_list_element*, %struct.cmd_list_element** %6, align 8
  %115 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %116 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %115, i32 0, i32 0
  store %struct.cmd_list_element* %114, %struct.cmd_list_element** %116, align 8
  br label %121

117:                                              ; preds = %67
  %118 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %119 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %118, i32 0, i32 0
  %120 = load %struct.cmd_list_element*, %struct.cmd_list_element** %119, align 8
  store %struct.cmd_list_element* %120, %struct.cmd_list_element** %5, align 8
  br label %121

121:                                              ; preds = %117, %104
  br label %62

122:                                              ; preds = %62
  br label %123

123:                                              ; preds = %122, %55
  ret void
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @xfree(%struct.cmd_list_element*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
