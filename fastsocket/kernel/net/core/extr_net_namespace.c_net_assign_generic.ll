; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_net_namespace.c_net_assign_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_net_namespace.c_net_assign_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.net_generic* }
%struct.net_generic = type { i32, i8**, i32 }

@net_mutex = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@net_generic_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @net_assign_generic(%struct.net* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_generic*, align 8
  %9 = alloca %struct.net_generic*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = call i32 @mutex_is_locked(i32* @net_mutex)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.net*, %struct.net** %5, align 8
  %20 = getelementptr inbounds %struct.net, %struct.net* %19, i32 0, i32 0
  %21 = load %struct.net_generic*, %struct.net_generic** %20, align 8
  store %struct.net_generic* %21, %struct.net_generic** %9, align 8
  store %struct.net_generic* %21, %struct.net_generic** %8, align 8
  %22 = load %struct.net_generic*, %struct.net_generic** %9, align 8
  %23 = getelementptr inbounds %struct.net_generic, %struct.net_generic* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %56

28:                                               ; preds = %3
  %29 = call %struct.net_generic* (...) @net_alloc_generic()
  store %struct.net_generic* %29, %struct.net_generic** %8, align 8
  %30 = load %struct.net_generic*, %struct.net_generic** %8, align 8
  %31 = icmp eq %struct.net_generic* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %65

35:                                               ; preds = %28
  %36 = load %struct.net_generic*, %struct.net_generic** %8, align 8
  %37 = getelementptr inbounds %struct.net_generic, %struct.net_generic* %36, i32 0, i32 1
  %38 = load %struct.net_generic*, %struct.net_generic** %9, align 8
  %39 = getelementptr inbounds %struct.net_generic, %struct.net_generic* %38, i32 0, i32 1
  %40 = load %struct.net_generic*, %struct.net_generic** %9, align 8
  %41 = getelementptr inbounds %struct.net_generic, %struct.net_generic* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @memcpy(i8*** %37, i8*** %39, i32 %45)
  %47 = load %struct.net*, %struct.net** %5, align 8
  %48 = getelementptr inbounds %struct.net, %struct.net* %47, i32 0, i32 0
  %49 = load %struct.net_generic*, %struct.net_generic** %48, align 8
  %50 = load %struct.net_generic*, %struct.net_generic** %8, align 8
  %51 = call i32 @rcu_assign_pointer(%struct.net_generic* %49, %struct.net_generic* %50)
  %52 = load %struct.net_generic*, %struct.net_generic** %9, align 8
  %53 = getelementptr inbounds %struct.net_generic, %struct.net_generic* %52, i32 0, i32 2
  %54 = load i32, i32* @net_generic_release, align 4
  %55 = call i32 @call_rcu(i32* %53, i32 %54)
  br label %56

56:                                               ; preds = %35, %27
  %57 = load i8*, i8** %7, align 8
  %58 = load %struct.net_generic*, %struct.net_generic** %8, align 8
  %59 = getelementptr inbounds %struct.net_generic, %struct.net_generic* %58, i32 0, i32 1
  %60 = load i8**, i8*** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %60, i64 %63
  store i8* %57, i8** %64, align 8
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %56, %32
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local %struct.net_generic* @net_alloc_generic(...) #1

declare dso_local i32 @memcpy(i8***, i8***, i32) #1

declare dso_local i32 @rcu_assign_pointer(%struct.net_generic*, %struct.net_generic*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
