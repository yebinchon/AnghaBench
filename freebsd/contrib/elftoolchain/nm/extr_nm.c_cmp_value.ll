; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_cmp_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_cmp_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }
%struct.sym_entry = type { %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i64 }

@nm_print_data = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmp_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_value(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sym_entry*, align 8
  %7 = alloca %struct.sym_entry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.sym_entry*
  store %struct.sym_entry* %12, %struct.sym_entry** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.sym_entry*
  store %struct.sym_entry* %14, %struct.sym_entry** %7, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nm_print_data, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nm_print_data, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %8, align 8
  %22 = load %struct.sym_entry*, %struct.sym_entry** %6, align 8
  %23 = icmp ne %struct.sym_entry* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.sym_entry*, %struct.sym_entry** %6, align 8
  %27 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.sym_entry*, %struct.sym_entry** %6, align 8
  %33 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = icmp ne %struct.TYPE_4__* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.sym_entry*, %struct.sym_entry** %7, align 8
  %39 = icmp ne %struct.sym_entry* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.sym_entry*, %struct.sym_entry** %7, align 8
  %43 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.sym_entry*, %struct.sym_entry** %7, align 8
  %49 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = icmp ne %struct.TYPE_4__* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i8*, i8** %8, align 8
  %55 = icmp ne i8* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load %struct.sym_entry*, %struct.sym_entry** %6, align 8
  %59 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @get_sym_type(%struct.TYPE_4__* %60, i8* %61)
  %63 = call i64 @IS_UNDEF_SYM_TYPE(i32 %62)
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 1, i32 0
  store i32 %66, i32* %9, align 4
  %67 = load %struct.sym_entry*, %struct.sym_entry** %7, align 8
  %68 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 @get_sym_type(%struct.TYPE_4__* %69, i8* %70)
  %72 = call i64 @IS_UNDEF_SYM_TYPE(i32 %71)
  %73 = icmp ne i64 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 1, i32 0
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %76, %77
  %79 = icmp sge i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %82, %83
  %85 = icmp sle i32 %84, 2
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %88, %89
  switch i32 %90, label %138 [
    i32 0, label %91
    i32 1, label %125
    i32 2, label %130
  ]

91:                                               ; preds = %2
  %92 = load %struct.sym_entry*, %struct.sym_entry** %6, align 8
  %93 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.sym_entry*, %struct.sym_entry** %7, align 8
  %98 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %96, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %91
  %104 = load %struct.sym_entry*, %struct.sym_entry** %6, align 8
  %105 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.sym_entry*, %struct.sym_entry** %7, align 8
  %108 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @strcmp(i32* %106, i32* %109)
  store i32 %110, i32* %3, align 4
  br label %151

111:                                              ; preds = %91
  %112 = load %struct.sym_entry*, %struct.sym_entry** %6, align 8
  %113 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.sym_entry*, %struct.sym_entry** %7, align 8
  %118 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %117, i32 0, i32 0
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp sgt i64 %116, %121
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i32 1, i32 -1
  store i32 %124, i32* %3, align 4
  br label %151

125:                                              ; preds = %2
  %126 = load i32, i32* %9, align 4
  %127 = icmp eq i32 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i32 1, i32 -1
  store i32 %129, i32* %3, align 4
  br label %151

130:                                              ; preds = %2
  %131 = load %struct.sym_entry*, %struct.sym_entry** %6, align 8
  %132 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.sym_entry*, %struct.sym_entry** %7, align 8
  %135 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @strcmp(i32* %133, i32* %136)
  store i32 %137, i32* %3, align 4
  br label %151

138:                                              ; preds = %2
  %139 = load %struct.sym_entry*, %struct.sym_entry** %6, align 8
  %140 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %139, i32 0, i32 0
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.sym_entry*, %struct.sym_entry** %7, align 8
  %145 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %144, i32 0, i32 0
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = sub nsw i64 %143, %148
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %138, %130, %125, %111, %103
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @IS_UNDEF_SYM_TYPE(i32) #1

declare dso_local i32 @get_sym_type(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @strcmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
