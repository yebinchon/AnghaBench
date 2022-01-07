; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_prio_heap.c_heap_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_prio_heap.c_heap_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptr_heap = type { i8**, i64, i64, i64 (i8*, i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @heap_insert(%struct.ptr_heap* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ptr_heap*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ptr_heap* %0, %struct.ptr_heap** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.ptr_heap*, %struct.ptr_heap** %4, align 8
  %13 = getelementptr inbounds %struct.ptr_heap, %struct.ptr_heap* %12, i32 0, i32 0
  %14 = load i8**, i8*** %13, align 8
  store i8** %14, i8*** %7, align 8
  %15 = load %struct.ptr_heap*, %struct.ptr_heap** %4, align 8
  %16 = getelementptr inbounds %struct.ptr_heap, %struct.ptr_heap* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ptr_heap*, %struct.ptr_heap** %4, align 8
  %19 = getelementptr inbounds %struct.ptr_heap, %struct.ptr_heap* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %68

22:                                               ; preds = %2
  %23 = load %struct.ptr_heap*, %struct.ptr_heap** %4, align 8
  %24 = getelementptr inbounds %struct.ptr_heap, %struct.ptr_heap* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %24, align 8
  %27 = trunc i64 %25 to i32
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %47, %22
  %29 = load i32, i32* %8, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = load %struct.ptr_heap*, %struct.ptr_heap** %4, align 8
  %33 = getelementptr inbounds %struct.ptr_heap, %struct.ptr_heap* %32, i32 0, i32 3
  %34 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %33, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load i8**, i8*** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sdiv i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %36, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 %34(i8* %35, i8* %42)
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %31, %28
  %46 = phi i1 [ false, %28 ], [ %44, %31 ]
  br i1 %46, label %47, label %62

47:                                               ; preds = %45
  %48 = load i8**, i8*** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sdiv i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %48, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = load i8**, i8*** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  store i8* %54, i8** %58, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sdiv i32 %60, 2
  store i32 %61, i32* %8, align 4
  br label %28

62:                                               ; preds = %45
  %63 = load i8*, i8** %5, align 8
  %64 = load i8**, i8*** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  store i8* %63, i8** %67, align 8
  store i8* null, i8** %3, align 8
  br label %163

68:                                               ; preds = %2
  %69 = load %struct.ptr_heap*, %struct.ptr_heap** %4, align 8
  %70 = getelementptr inbounds %struct.ptr_heap, %struct.ptr_heap* %69, i32 0, i32 3
  %71 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %70, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = load i8**, i8*** %7, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 %71(i8* %72, i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %68
  %79 = load i8*, i8** %5, align 8
  store i8* %79, i8** %3, align 8
  br label %163

80:                                               ; preds = %68
  %81 = load i8**, i8*** %7, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 0
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %6, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = load i8**, i8*** %7, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 0
  store i8* %84, i8** %86, align 8
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %80, %145
  %88 = load i32, i32* %8, align 4
  %89 = mul nsw i32 2, %88
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %8, align 4
  %92 = mul nsw i32 2, %91
  %93 = add nsw i32 %92, 2
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = load %struct.ptr_heap*, %struct.ptr_heap** %4, align 8
  %98 = getelementptr inbounds %struct.ptr_heap, %struct.ptr_heap* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp slt i64 %96, %99
  br i1 %100, label %101, label %115

101:                                              ; preds = %87
  %102 = load %struct.ptr_heap*, %struct.ptr_heap** %4, align 8
  %103 = getelementptr inbounds %struct.ptr_heap, %struct.ptr_heap* %102, i32 0, i32 3
  %104 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %103, align 8
  %105 = load i8**, i8*** %7, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = load i8*, i8** %5, align 8
  %111 = call i64 %104(i8* %109, i8* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %101
  %114 = load i32, i32* %9, align 4
  store i32 %114, i32* %11, align 4
  br label %115

115:                                              ; preds = %113, %101, %87
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = load %struct.ptr_heap*, %struct.ptr_heap** %4, align 8
  %119 = getelementptr inbounds %struct.ptr_heap, %struct.ptr_heap* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp slt i64 %117, %120
  br i1 %121, label %122, label %140

122:                                              ; preds = %115
  %123 = load %struct.ptr_heap*, %struct.ptr_heap** %4, align 8
  %124 = getelementptr inbounds %struct.ptr_heap, %struct.ptr_heap* %123, i32 0, i32 3
  %125 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %124, align 8
  %126 = load i8**, i8*** %7, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = load i8**, i8*** %7, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = call i64 %125(i8* %130, i8* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %122
  %139 = load i32, i32* %10, align 4
  store i32 %139, i32* %11, align 4
  br label %140

140:                                              ; preds = %138, %122, %115
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  br label %161

145:                                              ; preds = %140
  %146 = load i8**, i8*** %7, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %146, i64 %148
  %150 = load i8*, i8** %149, align 8
  %151 = load i8**, i8*** %7, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %151, i64 %153
  store i8* %150, i8** %154, align 8
  %155 = load i8*, i8** %5, align 8
  %156 = load i8**, i8*** %7, align 8
  %157 = load i32, i32* %11, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %156, i64 %158
  store i8* %155, i8** %159, align 8
  %160 = load i32, i32* %11, align 4
  store i32 %160, i32* %8, align 4
  br label %87

161:                                              ; preds = %144
  %162 = load i8*, i8** %6, align 8
  store i8* %162, i8** %3, align 8
  br label %163

163:                                              ; preds = %161, %78, %62
  %164 = load i8*, i8** %3, align 8
  ret i8* %164
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
