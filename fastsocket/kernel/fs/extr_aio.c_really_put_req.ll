; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_really_put_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_really_put_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kioctx = type { i32, i64, i32, i32 }
%struct.kiocb = type { i32*, i32, i32 (%struct.kiocb*)*, i32* }

@kiocb_cachep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kioctx*, %struct.kiocb*)* @really_put_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @really_put_req(%struct.kioctx* %0, %struct.kiocb* %1) #0 {
  %3 = alloca %struct.kioctx*, align 8
  %4 = alloca %struct.kiocb*, align 8
  store %struct.kioctx* %0, %struct.kioctx** %3, align 8
  store %struct.kiocb* %1, %struct.kiocb** %4, align 8
  %5 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %6 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %5, i32 0, i32 3
  %7 = call i32 @assert_spin_locked(i32* %6)
  %8 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %9 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %14 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @eventfd_ctx_put(i32* %15)
  br label %17

17:                                               ; preds = %12, %2
  %18 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %19 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %18, i32 0, i32 2
  %20 = load i32 (%struct.kiocb*)*, i32 (%struct.kiocb*)** %19, align 8
  %21 = icmp ne i32 (%struct.kiocb*)* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %24 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %23, i32 0, i32 2
  %25 = load i32 (%struct.kiocb*)*, i32 (%struct.kiocb*)** %24, align 8
  %26 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %27 = call i32 %25(%struct.kiocb* %26)
  br label %28

28:                                               ; preds = %22, %17
  %29 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %30 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %33 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %32, i32 0, i32 1
  %34 = icmp ne i32* %31, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %37 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @kfree(i32* %38)
  br label %40

40:                                               ; preds = %35, %28
  %41 = load i32, i32* @kiocb_cachep, align 4
  %42 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %43 = call i32 @kmem_cache_free(i32 %41, %struct.kiocb* %42)
  %44 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %45 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 8
  %48 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %49 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %40
  %53 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %54 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br label %57

57:                                               ; preds = %52, %40
  %58 = phi i1 [ false, %40 ], [ %56, %52 ]
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.kioctx*, %struct.kioctx** %3, align 8
  %64 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %63, i32 0, i32 0
  %65 = call i32 @wake_up(i32* %64)
  br label %66

66:                                               ; preds = %62, %57
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @eventfd_ctx_put(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.kiocb*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
