; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_dx_insert_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_dx_insert_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dx_frame = type { %struct.dx_entry*, %struct.dx_entry* }
%struct.dx_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dx_frame*, i32, i32)* @dx_insert_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dx_insert_block(%struct.dx_frame* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dx_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dx_entry*, align 8
  %8 = alloca %struct.dx_entry*, align 8
  %9 = alloca %struct.dx_entry*, align 8
  %10 = alloca i32, align 4
  store %struct.dx_frame* %0, %struct.dx_frame** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.dx_frame*, %struct.dx_frame** %4, align 8
  %12 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %11, i32 0, i32 1
  %13 = load %struct.dx_entry*, %struct.dx_entry** %12, align 8
  store %struct.dx_entry* %13, %struct.dx_entry** %7, align 8
  %14 = load %struct.dx_frame*, %struct.dx_frame** %4, align 8
  %15 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %14, i32 0, i32 0
  %16 = load %struct.dx_entry*, %struct.dx_entry** %15, align 8
  store %struct.dx_entry* %16, %struct.dx_entry** %8, align 8
  %17 = load %struct.dx_entry*, %struct.dx_entry** %8, align 8
  %18 = getelementptr inbounds %struct.dx_entry, %struct.dx_entry* %17, i64 1
  store %struct.dx_entry* %18, %struct.dx_entry** %9, align 8
  %19 = load %struct.dx_entry*, %struct.dx_entry** %7, align 8
  %20 = call i32 @dx_get_count(%struct.dx_entry* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.dx_entry*, %struct.dx_entry** %7, align 8
  %23 = call i32 @dx_get_limit(%struct.dx_entry* %22)
  %24 = icmp slt i32 %21, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.dx_entry*, %struct.dx_entry** %8, align 8
  %28 = load %struct.dx_entry*, %struct.dx_entry** %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.dx_entry, %struct.dx_entry* %28, i64 %30
  %32 = icmp ult %struct.dx_entry* %27, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.dx_entry*, %struct.dx_entry** %9, align 8
  %36 = getelementptr inbounds %struct.dx_entry, %struct.dx_entry* %35, i64 1
  %37 = load %struct.dx_entry*, %struct.dx_entry** %9, align 8
  %38 = load %struct.dx_entry*, %struct.dx_entry** %7, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.dx_entry, %struct.dx_entry* %38, i64 %40
  %42 = bitcast %struct.dx_entry* %41 to i8*
  %43 = load %struct.dx_entry*, %struct.dx_entry** %9, align 8
  %44 = bitcast %struct.dx_entry* %43 to i8*
  %45 = ptrtoint i8* %42 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = call i32 @memmove(%struct.dx_entry* %36, %struct.dx_entry* %37, i32 %48)
  %50 = load %struct.dx_entry*, %struct.dx_entry** %9, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @dx_set_hash(%struct.dx_entry* %50, i32 %51)
  %53 = load %struct.dx_entry*, %struct.dx_entry** %9, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @dx_set_block(%struct.dx_entry* %53, i32 %54)
  %56 = load %struct.dx_entry*, %struct.dx_entry** %7, align 8
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  %59 = call i32 @dx_set_count(%struct.dx_entry* %56, i32 %58)
  ret void
}

declare dso_local i32 @dx_get_count(%struct.dx_entry*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dx_get_limit(%struct.dx_entry*) #1

declare dso_local i32 @memmove(%struct.dx_entry*, %struct.dx_entry*, i32) #1

declare dso_local i32 @dx_set_hash(%struct.dx_entry*, i32) #1

declare dso_local i32 @dx_set_block(%struct.dx_entry*, i32) #1

declare dso_local i32 @dx_set_count(%struct.dx_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
