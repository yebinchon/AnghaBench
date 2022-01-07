; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_log.c_nf_log_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_log.c_nf_log_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_logger = type { i32* }

@nf_loggers = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@nf_log_mutex = common dso_local global i32 0, align 4
@NFPROTO_UNSPEC = common dso_local global i64 0, align 8
@NFPROTO_NUMPROTO = common dso_local global i32 0, align 4
@nf_loggers_l = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_log_register(i64 %0, %struct.nf_logger* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.nf_logger*, align 8
  %6 = alloca %struct.nf_logger*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.nf_logger* %1, %struct.nf_logger** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i32*, i32** @nf_loggers, align 8
  %10 = call i32 @ARRAY_SIZE(i32* %9)
  %11 = sext i32 %10 to i64
  %12 = icmp uge i64 %8, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %90

16:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %32, %16
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.nf_logger*, %struct.nf_logger** %5, align 8
  %20 = getelementptr inbounds %struct.nf_logger, %struct.nf_logger* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @ARRAY_SIZE(i32* %21)
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %17
  %25 = load %struct.nf_logger*, %struct.nf_logger** %5, align 8
  %26 = getelementptr inbounds %struct.nf_logger, %struct.nf_logger* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  br label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %17

35:                                               ; preds = %17
  %36 = call i32 @mutex_lock(i32* @nf_log_mutex)
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @NFPROTO_UNSPEC, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %35
  %41 = load i64, i64* @NFPROTO_UNSPEC, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %59, %40
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @NFPROTO_NUMPROTO, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %43
  %48 = load %struct.nf_logger*, %struct.nf_logger** %5, align 8
  %49 = getelementptr inbounds %struct.nf_logger, %struct.nf_logger* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32*, i32** @nf_loggers_l, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = call i32 @list_add_tail(i32* %53, i32* %57)
  br label %59

59:                                               ; preds = %47
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %43

62:                                               ; preds = %43
  br label %88

63:                                               ; preds = %35
  %64 = load %struct.nf_logger*, %struct.nf_logger** %5, align 8
  %65 = getelementptr inbounds %struct.nf_logger, %struct.nf_logger* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* %4, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32*, i32** @nf_loggers_l, align 8
  %70 = load i64, i64* %4, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = call i32 @list_add_tail(i32* %68, i32* %71)
  %73 = load i32*, i32** @nf_loggers, align 8
  %74 = load i64, i64* %4, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.nf_logger* @rcu_dereference(i32 %76)
  store %struct.nf_logger* %77, %struct.nf_logger** %6, align 8
  %78 = load %struct.nf_logger*, %struct.nf_logger** %6, align 8
  %79 = icmp eq %struct.nf_logger* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %63
  %81 = load i32*, i32** @nf_loggers, align 8
  %82 = load i64, i64* %4, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.nf_logger*, %struct.nf_logger** %5, align 8
  %86 = call i32 @rcu_assign_pointer(i32 %84, %struct.nf_logger* %85)
  br label %87

87:                                               ; preds = %80, %63
  br label %88

88:                                               ; preds = %87, %62
  %89 = call i32 @mutex_unlock(i32* @nf_log_mutex)
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %13
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.nf_logger* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.nf_logger*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
