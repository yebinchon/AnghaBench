; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_support.c_freeaddrinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_support.c_freeaddrinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { %struct.addrinfo*, %struct.addrinfo* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @freeaddrinfo(%struct.addrinfo* %0) #0 {
  %2 = alloca %struct.addrinfo*, align 8
  %3 = alloca %struct.addrinfo*, align 8
  store %struct.addrinfo* %0, %struct.addrinfo** %2, align 8
  br label %4

4:                                                ; preds = %20, %1
  %5 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %6 = icmp ne %struct.addrinfo* %5, null
  br i1 %6, label %7, label %24

7:                                                ; preds = %4
  %8 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %9 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 1
  %10 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  store %struct.addrinfo* %10, %struct.addrinfo** %3, align 8
  %11 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %12 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 0
  %13 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %14 = icmp ne %struct.addrinfo* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %7
  %16 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %17 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %16, i32 0, i32 0
  %18 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %19 = call i32 @free(%struct.addrinfo* %18)
  br label %20

20:                                               ; preds = %15, %7
  %21 = load %struct.addrinfo*, %struct.addrinfo** %2, align 8
  %22 = call i32 @free(%struct.addrinfo* %21)
  %23 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  store %struct.addrinfo* %23, %struct.addrinfo** %2, align 8
  br label %4

24:                                               ; preds = %4
  ret void
}

declare dso_local i32 @free(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
