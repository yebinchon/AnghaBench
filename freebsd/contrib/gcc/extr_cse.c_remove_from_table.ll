; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_remove_from_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_remove_from_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_elt = type { %struct.table_elt*, %struct.table_elt*, %struct.table_elt*, %struct.table_elt*, %struct.table_elt*, %struct.table_elt* }

@table = common dso_local global %struct.table_elt** null, align 8
@HASH_SIZE = common dso_local global i32 0, align 4
@free_element_chain = common dso_local global %struct.table_elt* null, align 8
@table_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.table_elt*, i32)* @remove_from_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_from_table(%struct.table_elt* %0, i32 %1) #0 {
  %3 = alloca %struct.table_elt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.table_elt*, align 8
  %6 = alloca %struct.table_elt*, align 8
  %7 = alloca %struct.table_elt*, align 8
  %8 = alloca %struct.table_elt*, align 8
  %9 = alloca %struct.table_elt*, align 8
  %10 = alloca %struct.table_elt*, align 8
  store %struct.table_elt* %0, %struct.table_elt** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.table_elt*, %struct.table_elt** %3, align 8
  %12 = icmp eq %struct.table_elt* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %155

14:                                               ; preds = %2
  %15 = load %struct.table_elt*, %struct.table_elt** %3, align 8
  %16 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %15, i32 0, i32 4
  store %struct.table_elt* null, %struct.table_elt** %16, align 8
  %17 = load %struct.table_elt*, %struct.table_elt** %3, align 8
  %18 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %17, i32 0, i32 5
  %19 = load %struct.table_elt*, %struct.table_elt** %18, align 8
  store %struct.table_elt* %19, %struct.table_elt** %5, align 8
  %20 = load %struct.table_elt*, %struct.table_elt** %3, align 8
  %21 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %20, i32 0, i32 3
  %22 = load %struct.table_elt*, %struct.table_elt** %21, align 8
  store %struct.table_elt* %22, %struct.table_elt** %6, align 8
  %23 = load %struct.table_elt*, %struct.table_elt** %6, align 8
  %24 = icmp ne %struct.table_elt* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %14
  %26 = load %struct.table_elt*, %struct.table_elt** %5, align 8
  %27 = load %struct.table_elt*, %struct.table_elt** %6, align 8
  %28 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %27, i32 0, i32 5
  store %struct.table_elt* %26, %struct.table_elt** %28, align 8
  br label %29

29:                                               ; preds = %25, %14
  %30 = load %struct.table_elt*, %struct.table_elt** %5, align 8
  %31 = icmp ne %struct.table_elt* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.table_elt*, %struct.table_elt** %6, align 8
  %34 = load %struct.table_elt*, %struct.table_elt** %5, align 8
  %35 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %34, i32 0, i32 3
  store %struct.table_elt* %33, %struct.table_elt** %35, align 8
  br label %49

36:                                               ; preds = %29
  %37 = load %struct.table_elt*, %struct.table_elt** %6, align 8
  store %struct.table_elt* %37, %struct.table_elt** %7, align 8
  br label %38

38:                                               ; preds = %41, %36
  %39 = load %struct.table_elt*, %struct.table_elt** %6, align 8
  %40 = icmp ne %struct.table_elt* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load %struct.table_elt*, %struct.table_elt** %7, align 8
  %43 = load %struct.table_elt*, %struct.table_elt** %6, align 8
  %44 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %43, i32 0, i32 4
  store %struct.table_elt* %42, %struct.table_elt** %44, align 8
  %45 = load %struct.table_elt*, %struct.table_elt** %6, align 8
  %46 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %45, i32 0, i32 3
  %47 = load %struct.table_elt*, %struct.table_elt** %46, align 8
  store %struct.table_elt* %47, %struct.table_elt** %6, align 8
  br label %38

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %32
  %50 = load %struct.table_elt*, %struct.table_elt** %3, align 8
  %51 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %50, i32 0, i32 2
  %52 = load %struct.table_elt*, %struct.table_elt** %51, align 8
  store %struct.table_elt* %52, %struct.table_elt** %8, align 8
  %53 = load %struct.table_elt*, %struct.table_elt** %3, align 8
  %54 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %53, i32 0, i32 0
  %55 = load %struct.table_elt*, %struct.table_elt** %54, align 8
  store %struct.table_elt* %55, %struct.table_elt** %9, align 8
  %56 = load %struct.table_elt*, %struct.table_elt** %9, align 8
  %57 = icmp ne %struct.table_elt* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %49
  %59 = load %struct.table_elt*, %struct.table_elt** %8, align 8
  %60 = load %struct.table_elt*, %struct.table_elt** %9, align 8
  %61 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %60, i32 0, i32 2
  store %struct.table_elt* %59, %struct.table_elt** %61, align 8
  br label %62

62:                                               ; preds = %58, %49
  %63 = load %struct.table_elt*, %struct.table_elt** %8, align 8
  %64 = icmp ne %struct.table_elt* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load %struct.table_elt*, %struct.table_elt** %9, align 8
  %67 = load %struct.table_elt*, %struct.table_elt** %8, align 8
  %68 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %67, i32 0, i32 0
  store %struct.table_elt* %66, %struct.table_elt** %68, align 8
  br label %108

69:                                               ; preds = %62
  %70 = load %struct.table_elt**, %struct.table_elt*** @table, align 8
  %71 = load i32, i32* %4, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.table_elt*, %struct.table_elt** %70, i64 %72
  %74 = load %struct.table_elt*, %struct.table_elt** %73, align 8
  %75 = load %struct.table_elt*, %struct.table_elt** %3, align 8
  %76 = icmp eq %struct.table_elt* %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %69
  %78 = load %struct.table_elt*, %struct.table_elt** %9, align 8
  %79 = load %struct.table_elt**, %struct.table_elt*** @table, align 8
  %80 = load i32, i32* %4, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.table_elt*, %struct.table_elt** %79, i64 %81
  store %struct.table_elt* %78, %struct.table_elt** %82, align 8
  br label %107

83:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %103, %83
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @HASH_SIZE, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %88, label %106

88:                                               ; preds = %84
  %89 = load %struct.table_elt**, %struct.table_elt*** @table, align 8
  %90 = load i32, i32* %4, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.table_elt*, %struct.table_elt** %89, i64 %91
  %93 = load %struct.table_elt*, %struct.table_elt** %92, align 8
  %94 = load %struct.table_elt*, %struct.table_elt** %3, align 8
  %95 = icmp eq %struct.table_elt* %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %88
  %97 = load %struct.table_elt*, %struct.table_elt** %9, align 8
  %98 = load %struct.table_elt**, %struct.table_elt*** @table, align 8
  %99 = load i32, i32* %4, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.table_elt*, %struct.table_elt** %98, i64 %100
  store %struct.table_elt* %97, %struct.table_elt** %101, align 8
  br label %102

102:                                              ; preds = %96, %88
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %4, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %4, align 4
  br label %84

106:                                              ; preds = %84
  br label %107

107:                                              ; preds = %106, %77
  br label %108

108:                                              ; preds = %107, %65
  %109 = load %struct.table_elt*, %struct.table_elt** %3, align 8
  %110 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %109, i32 0, i32 1
  %111 = load %struct.table_elt*, %struct.table_elt** %110, align 8
  %112 = icmp ne %struct.table_elt* %111, null
  br i1 %112, label %113, label %148

113:                                              ; preds = %108
  %114 = load %struct.table_elt*, %struct.table_elt** %3, align 8
  %115 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %114, i32 0, i32 1
  %116 = load %struct.table_elt*, %struct.table_elt** %115, align 8
  %117 = load %struct.table_elt*, %struct.table_elt** %3, align 8
  %118 = icmp ne %struct.table_elt* %116, %117
  br i1 %118, label %119, label %148

119:                                              ; preds = %113
  %120 = load %struct.table_elt*, %struct.table_elt** %3, align 8
  %121 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %120, i32 0, i32 1
  %122 = load %struct.table_elt*, %struct.table_elt** %121, align 8
  store %struct.table_elt* %122, %struct.table_elt** %10, align 8
  br label %123

123:                                              ; preds = %129, %119
  %124 = load %struct.table_elt*, %struct.table_elt** %10, align 8
  %125 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %124, i32 0, i32 1
  %126 = load %struct.table_elt*, %struct.table_elt** %125, align 8
  %127 = load %struct.table_elt*, %struct.table_elt** %3, align 8
  %128 = icmp ne %struct.table_elt* %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = load %struct.table_elt*, %struct.table_elt** %10, align 8
  %131 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %130, i32 0, i32 1
  %132 = load %struct.table_elt*, %struct.table_elt** %131, align 8
  store %struct.table_elt* %132, %struct.table_elt** %10, align 8
  br label %123

133:                                              ; preds = %123
  %134 = load %struct.table_elt*, %struct.table_elt** %3, align 8
  %135 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %134, i32 0, i32 1
  %136 = load %struct.table_elt*, %struct.table_elt** %135, align 8
  %137 = load %struct.table_elt*, %struct.table_elt** %10, align 8
  %138 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %137, i32 0, i32 1
  store %struct.table_elt* %136, %struct.table_elt** %138, align 8
  %139 = load %struct.table_elt*, %struct.table_elt** %10, align 8
  %140 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %139, i32 0, i32 1
  %141 = load %struct.table_elt*, %struct.table_elt** %140, align 8
  %142 = load %struct.table_elt*, %struct.table_elt** %10, align 8
  %143 = icmp eq %struct.table_elt* %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %133
  %145 = load %struct.table_elt*, %struct.table_elt** %10, align 8
  %146 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %145, i32 0, i32 1
  store %struct.table_elt* null, %struct.table_elt** %146, align 8
  br label %147

147:                                              ; preds = %144, %133
  br label %148

148:                                              ; preds = %147, %113, %108
  %149 = load %struct.table_elt*, %struct.table_elt** @free_element_chain, align 8
  %150 = load %struct.table_elt*, %struct.table_elt** %3, align 8
  %151 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %150, i32 0, i32 0
  store %struct.table_elt* %149, %struct.table_elt** %151, align 8
  %152 = load %struct.table_elt*, %struct.table_elt** %3, align 8
  store %struct.table_elt* %152, %struct.table_elt** @free_element_chain, align 8
  %153 = load i32, i32* @table_size, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* @table_size, align 4
  br label %155

155:                                              ; preds = %148, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
