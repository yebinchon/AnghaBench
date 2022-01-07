; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_westwood.c_westwood_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_westwood.c_westwood_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.westwood = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.westwood*, i32)* @westwood_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @westwood_filter(%struct.westwood* %0, i32 %1) #0 {
  %3 = alloca %struct.westwood*, align 8
  %4 = alloca i32, align 4
  store %struct.westwood* %0, %struct.westwood** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.westwood*, %struct.westwood** %3, align 8
  %6 = getelementptr inbounds %struct.westwood, %struct.westwood* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = load %struct.westwood*, %struct.westwood** %3, align 8
  %11 = getelementptr inbounds %struct.westwood, %struct.westwood* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %9
  %15 = load %struct.westwood*, %struct.westwood** %3, align 8
  %16 = getelementptr inbounds %struct.westwood, %struct.westwood* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = sdiv i32 %17, %18
  %20 = load %struct.westwood*, %struct.westwood** %3, align 8
  %21 = getelementptr inbounds %struct.westwood, %struct.westwood* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.westwood*, %struct.westwood** %3, align 8
  %23 = getelementptr inbounds %struct.westwood, %struct.westwood* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.westwood*, %struct.westwood** %3, align 8
  %26 = getelementptr inbounds %struct.westwood, %struct.westwood* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %50

27:                                               ; preds = %9, %2
  %28 = load %struct.westwood*, %struct.westwood** %3, align 8
  %29 = getelementptr inbounds %struct.westwood, %struct.westwood* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.westwood*, %struct.westwood** %3, align 8
  %32 = getelementptr inbounds %struct.westwood, %struct.westwood* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = sdiv i32 %33, %34
  %36 = call i8* @westwood_do_filter(i32 %30, i32 %35)
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.westwood*, %struct.westwood** %3, align 8
  %39 = getelementptr inbounds %struct.westwood, %struct.westwood* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.westwood*, %struct.westwood** %3, align 8
  %41 = getelementptr inbounds %struct.westwood, %struct.westwood* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.westwood*, %struct.westwood** %3, align 8
  %44 = getelementptr inbounds %struct.westwood, %struct.westwood* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @westwood_do_filter(i32 %42, i32 %45)
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct.westwood*, %struct.westwood** %3, align 8
  %49 = getelementptr inbounds %struct.westwood, %struct.westwood* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %27, %14
  ret void
}

declare dso_local i8* @westwood_do_filter(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
