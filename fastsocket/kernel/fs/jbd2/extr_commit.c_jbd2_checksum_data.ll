; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_commit.c_jbd2_checksum_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_commit.c_jbd2_checksum_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, i32, %struct.page* }
%struct.page = type { i32 }

@KM_USER0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.buffer_head*)* @jbd2_checksum_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jbd2_checksum_data(i32 %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %8 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %9 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %8, i32 0, i32 2
  %10 = load %struct.page*, %struct.page** %9, align 8
  store %struct.page* %10, %struct.page** %5, align 8
  %11 = load %struct.page*, %struct.page** %5, align 8
  %12 = load i32, i32* @KM_USER0, align 4
  %13 = call i8* @kmap_atomic(%struct.page* %11, i32 %12)
  store i8* %13, i8** %6, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @offset_in_page(i32 %18)
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %15, i64 %20
  %22 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %23 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @crc32_be(i32 %14, i8* %21, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @KM_USER0, align 4
  %28 = call i32 @kunmap_atomic(i8* %26, i32 %27)
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @crc32_be(i32, i8*, i32) #1

declare dso_local i32 @offset_in_page(i32) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
