; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lowcomms.c_close_connection.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lowcomms.c_close_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i64, i32*, %struct.connection*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.connection*, i32)* @close_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_connection(%struct.connection* %0, i32 %1) #0 {
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.connection*, %struct.connection** %3, align 8
  %6 = getelementptr inbounds %struct.connection, %struct.connection* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.connection*, %struct.connection** %3, align 8
  %9 = getelementptr inbounds %struct.connection, %struct.connection* %8, i32 0, i32 4
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.connection*, %struct.connection** %3, align 8
  %14 = getelementptr inbounds %struct.connection, %struct.connection* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @sock_release(i32* %15)
  %17 = load %struct.connection*, %struct.connection** %3, align 8
  %18 = getelementptr inbounds %struct.connection, %struct.connection* %17, i32 0, i32 4
  store i32* null, i32** %18, align 8
  br label %19

19:                                               ; preds = %12, %2
  %20 = load %struct.connection*, %struct.connection** %3, align 8
  %21 = getelementptr inbounds %struct.connection, %struct.connection* %20, i32 0, i32 3
  %22 = load %struct.connection*, %struct.connection** %21, align 8
  %23 = icmp ne %struct.connection* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load %struct.connection*, %struct.connection** %3, align 8
  %29 = getelementptr inbounds %struct.connection, %struct.connection* %28, i32 0, i32 3
  %30 = load %struct.connection*, %struct.connection** %29, align 8
  call void @close_connection(%struct.connection* %30, i32 0)
  br label %31

31:                                               ; preds = %27, %24, %19
  %32 = load %struct.connection*, %struct.connection** %3, align 8
  %33 = getelementptr inbounds %struct.connection, %struct.connection* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.connection*, %struct.connection** %3, align 8
  %38 = getelementptr inbounds %struct.connection, %struct.connection* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @__free_page(i32* %39)
  %41 = load %struct.connection*, %struct.connection** %3, align 8
  %42 = getelementptr inbounds %struct.connection, %struct.connection* %41, i32 0, i32 2
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %36, %31
  %44 = load %struct.connection*, %struct.connection** %3, align 8
  %45 = getelementptr inbounds %struct.connection, %struct.connection* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.connection*, %struct.connection** %3, align 8
  %47 = getelementptr inbounds %struct.connection, %struct.connection* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sock_release(i32*) #1

declare dso_local i32 @__free_page(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
