; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/blacklist/lib/extr_blacklist.c_blacklist_sa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/blacklist/lib/extr_blacklist.c_blacklist_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.blacklist = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blacklist_sa(i32 %0, i32 %1, %struct.sockaddr* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.blacklist*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = call %struct.blacklist* (...) @blacklist_open()
  store %struct.blacklist* %14, %struct.blacklist** %12, align 8
  %15 = icmp eq %struct.blacklist* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %28

17:                                               ; preds = %5
  %18 = load %struct.blacklist*, %struct.blacklist** %12, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i8*, i8** %11, align 8
  %24 = call i32 @blacklist_sa_r(%struct.blacklist* %18, i32 %19, i32 %20, %struct.sockaddr* %21, i32 %22, i8* %23)
  store i32 %24, i32* %13, align 4
  %25 = load %struct.blacklist*, %struct.blacklist** %12, align 8
  %26 = call i32 @blacklist_close(%struct.blacklist* %25)
  %27 = load i32, i32* %13, align 4
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %17, %16
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

declare dso_local %struct.blacklist* @blacklist_open(...) #1

declare dso_local i32 @blacklist_sa_r(%struct.blacklist*, i32, i32, %struct.sockaddr*, i32, i8*) #1

declare dso_local i32 @blacklist_close(%struct.blacklist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
