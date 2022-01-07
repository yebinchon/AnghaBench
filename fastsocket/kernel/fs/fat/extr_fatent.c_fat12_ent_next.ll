; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_fatent.c_fat12_ent_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_fatent.c_fat12_ent_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fat_entry = type { i32, i32, %struct.buffer_head**, %struct.TYPE_2__ }
%struct.buffer_head = type { i32, i32 }
%struct.TYPE_2__ = type { i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fat_entry*)* @fat12_ent_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat12_ent_next(%struct.fat_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fat_entry*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca %struct.buffer_head**, align 8
  %6 = alloca i32*, align 8
  store %struct.fat_entry* %0, %struct.fat_entry** %3, align 8
  %7 = load %struct.fat_entry*, %struct.fat_entry** %3, align 8
  %8 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32**, i32*** %9, align 8
  store i32** %10, i32*** %4, align 8
  %11 = load %struct.fat_entry*, %struct.fat_entry** %3, align 8
  %12 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %11, i32 0, i32 2
  %13 = load %struct.buffer_head**, %struct.buffer_head*** %12, align 8
  store %struct.buffer_head** %13, %struct.buffer_head*** %5, align 8
  %14 = load i32**, i32*** %4, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i64 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load %struct.fat_entry*, %struct.fat_entry** %3, align 8
  %19 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %17, i64 %22
  store i32* %23, i32** %6, align 8
  %24 = load %struct.fat_entry*, %struct.fat_entry** %3, align 8
  %25 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = load %struct.fat_entry*, %struct.fat_entry** %3, align 8
  %29 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %98

32:                                               ; preds = %1
  %33 = load i32**, i32*** %4, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  %37 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %36, i64 0
  %38 = load %struct.buffer_head*, %struct.buffer_head** %37, align 8
  %39 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  %42 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %41, i64 0
  %43 = load %struct.buffer_head*, %struct.buffer_head** %42, align 8
  %44 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 2
  %47 = add nsw i32 %40, %46
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i32*
  %50 = icmp ugt i32* %35, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @WARN_ON(i32 %51)
  %53 = load i32**, i32*** %4, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 1
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  %57 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %56, i64 0
  %58 = load %struct.buffer_head*, %struct.buffer_head** %57, align 8
  %59 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  %62 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %61, i64 0
  %63 = load %struct.buffer_head*, %struct.buffer_head** %62, align 8
  %64 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 1
  %67 = add nsw i32 %60, %66
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i32*
  %70 = icmp ugt i32* %55, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @WARN_ON(i32 %71)
  %73 = load i32*, i32** %6, align 8
  %74 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  %75 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %74, i64 0
  %76 = load %struct.buffer_head*, %struct.buffer_head** %75, align 8
  %77 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  %80 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %79, i64 0
  %81 = load %struct.buffer_head*, %struct.buffer_head** %80, align 8
  %82 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %83, 1
  %85 = add nsw i32 %78, %84
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i32*
  %88 = icmp ult i32* %73, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %32
  %90 = load i32*, i32** %6, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 -1
  %92 = load i32**, i32*** %4, align 8
  %93 = getelementptr inbounds i32*, i32** %92, i64 0
  store i32* %91, i32** %93, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = load i32**, i32*** %4, align 8
  %96 = getelementptr inbounds i32*, i32** %95, i64 1
  store i32* %94, i32** %96, align 8
  store i32 1, i32* %2, align 4
  br label %155

97:                                               ; preds = %32
  br label %150

98:                                               ; preds = %1
  %99 = load i32**, i32*** %4, align 8
  %100 = getelementptr inbounds i32*, i32** %99, i64 0
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  %103 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %102, i64 0
  %104 = load %struct.buffer_head*, %struct.buffer_head** %103, align 8
  %105 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  %108 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %107, i64 0
  %109 = load %struct.buffer_head*, %struct.buffer_head** %108, align 8
  %110 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %111, 1
  %113 = add nsw i32 %106, %112
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to i32*
  %116 = icmp ne i32* %101, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 @WARN_ON(i32 %117)
  %119 = load i32**, i32*** %4, align 8
  %120 = getelementptr inbounds i32*, i32** %119, i64 1
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  %123 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %122, i64 1
  %124 = load %struct.buffer_head*, %struct.buffer_head** %123, align 8
  %125 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = inttoptr i64 %127 to i32*
  %129 = icmp ne i32* %121, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 @WARN_ON(i32 %130)
  %132 = load i32*, i32** %6, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 -1
  %134 = load i32**, i32*** %4, align 8
  %135 = getelementptr inbounds i32*, i32** %134, i64 0
  store i32* %133, i32** %135, align 8
  %136 = load i32*, i32** %6, align 8
  %137 = load i32**, i32*** %4, align 8
  %138 = getelementptr inbounds i32*, i32** %137, i64 1
  store i32* %136, i32** %138, align 8
  %139 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  %140 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %139, i64 0
  %141 = load %struct.buffer_head*, %struct.buffer_head** %140, align 8
  %142 = call i32 @brelse(%struct.buffer_head* %141)
  %143 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  %144 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %143, i64 1
  %145 = load %struct.buffer_head*, %struct.buffer_head** %144, align 8
  %146 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  %147 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %146, i64 0
  store %struct.buffer_head* %145, %struct.buffer_head** %147, align 8
  %148 = load %struct.fat_entry*, %struct.fat_entry** %3, align 8
  %149 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %148, i32 0, i32 1
  store i32 1, i32* %149, align 4
  store i32 1, i32* %2, align 4
  br label %155

150:                                              ; preds = %97
  %151 = load i32**, i32*** %4, align 8
  %152 = getelementptr inbounds i32*, i32** %151, i64 0
  store i32* null, i32** %152, align 8
  %153 = load i32**, i32*** %4, align 8
  %154 = getelementptr inbounds i32*, i32** %153, i64 1
  store i32* null, i32** %154, align 8
  store i32 0, i32* %2, align 4
  br label %155

155:                                              ; preds = %150, %98, %89
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
