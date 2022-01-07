; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bearer.c_media_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bearer.c_media_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media = type { i32 }

@media_list = common dso_local global %struct.media* null, align 8
@media_count = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.media* (i8*)* @media_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.media* @media_find(i8* %0) #0 {
  %2 = alloca %struct.media*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.media*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.media*, %struct.media** @media_list, align 8
  store %struct.media* %6, %struct.media** %4, align 8
  br label %7

7:                                                ; preds = %21, %1
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @media_count, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = load %struct.media*, %struct.media** %4, align 8
  %13 = getelementptr inbounds %struct.media, %struct.media* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @strcmp(i32 %14, i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  %19 = load %struct.media*, %struct.media** %4, align 8
  store %struct.media* %19, %struct.media** %2, align 8
  br label %27

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %20
  %22 = load i64, i64* %5, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %5, align 8
  %24 = load %struct.media*, %struct.media** %4, align 8
  %25 = getelementptr inbounds %struct.media, %struct.media* %24, i32 1
  store %struct.media* %25, %struct.media** %4, align 8
  br label %7

26:                                               ; preds = %7
  store %struct.media* null, %struct.media** %2, align 8
  br label %27

27:                                               ; preds = %26, %18
  %28 = load %struct.media*, %struct.media** %2, align 8
  ret %struct.media* %28
}

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
