; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_map.c_new_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_map.c_new_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_entry = type { i32, i8*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.map_entry* (i8*, i8*, i32)* @new_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.map_entry* @new_entry(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.map_entry*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i64 @malloc(i32 24)
  %9 = inttoptr i64 %8 to %struct.map_entry*
  store %struct.map_entry* %9, %struct.map_entry** %7, align 8
  %10 = load %struct.map_entry*, %struct.map_entry** %7, align 8
  %11 = icmp ne %struct.map_entry* %10, null
  br i1 %11, label %12, label %32

12:                                               ; preds = %3
  %13 = load i8*, i8** %4, align 8
  %14 = call i32* @strdup(i8* %13)
  %15 = load %struct.map_entry*, %struct.map_entry** %7, align 8
  %16 = getelementptr inbounds %struct.map_entry, %struct.map_entry* %15, i32 0, i32 2
  store i32* %14, i32** %16, align 8
  %17 = load %struct.map_entry*, %struct.map_entry** %7, align 8
  %18 = getelementptr inbounds %struct.map_entry, %struct.map_entry* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load %struct.map_entry*, %struct.map_entry** %7, align 8
  %23 = call i32 @free(%struct.map_entry* %22)
  store %struct.map_entry* null, %struct.map_entry** %7, align 8
  br label %31

24:                                               ; preds = %12
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.map_entry*, %struct.map_entry** %7, align 8
  %27 = getelementptr inbounds %struct.map_entry, %struct.map_entry* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.map_entry*, %struct.map_entry** %7, align 8
  %30 = getelementptr inbounds %struct.map_entry, %struct.map_entry* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %24, %21
  br label %32

32:                                               ; preds = %31, %3
  %33 = load %struct.map_entry*, %struct.map_entry** %7, align 8
  ret %struct.map_entry* %33
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @free(%struct.map_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
