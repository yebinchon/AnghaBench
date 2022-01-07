; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_bio_set_map_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_bio_set_map_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_map_data = type { i32, i32, i32, i32 }
%struct.bio = type { i32, %struct.bio_map_data*, %struct.sg_iovec* }
%struct.sg_iovec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio_map_data*, %struct.bio*, %struct.sg_iovec*, i32, i32)* @bio_set_map_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bio_set_map_data(%struct.bio_map_data* %0, %struct.bio* %1, %struct.sg_iovec* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bio_map_data*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.sg_iovec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bio_map_data* %0, %struct.bio_map_data** %6, align 8
  store %struct.bio* %1, %struct.bio** %7, align 8
  store %struct.sg_iovec* %2, %struct.sg_iovec** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.bio_map_data*, %struct.bio_map_data** %6, align 8
  %12 = getelementptr inbounds %struct.bio_map_data, %struct.bio_map_data* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.bio*, %struct.bio** %7, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 2
  %16 = load %struct.sg_iovec*, %struct.sg_iovec** %15, align 8
  %17 = load %struct.bio*, %struct.bio** %7, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = mul i64 4, %20
  %22 = trunc i64 %21 to i32
  %23 = call i32 @memcpy(i32 %13, %struct.sg_iovec* %16, i32 %22)
  %24 = load %struct.bio_map_data*, %struct.bio_map_data** %6, align 8
  %25 = getelementptr inbounds %struct.bio_map_data, %struct.bio_map_data* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sg_iovec*, %struct.sg_iovec** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 4, %29
  %31 = trunc i64 %30 to i32
  %32 = call i32 @memcpy(i32 %26, %struct.sg_iovec* %27, i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.bio_map_data*, %struct.bio_map_data** %6, align 8
  %35 = getelementptr inbounds %struct.bio_map_data, %struct.bio_map_data* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.bio_map_data*, %struct.bio_map_data** %6, align 8
  %38 = getelementptr inbounds %struct.bio_map_data, %struct.bio_map_data* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.bio_map_data*, %struct.bio_map_data** %6, align 8
  %40 = load %struct.bio*, %struct.bio** %7, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 1
  store %struct.bio_map_data* %39, %struct.bio_map_data** %41, align 8
  ret void
}

declare dso_local i32 @memcpy(i32, %struct.sg_iovec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
