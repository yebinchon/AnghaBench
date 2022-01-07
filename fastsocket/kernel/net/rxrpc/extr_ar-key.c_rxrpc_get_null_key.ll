; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-key.c_rxrpc_get_null_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-key.c_rxrpc_get_null_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }
%struct.cred = type { i32 }

@key_type_rxrpc = common dso_local global i32 0, align 4
@KEY_POS_SEARCH = common dso_local global i32 0, align 4
@KEY_ALLOC_NOT_IN_QUOTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.key* @rxrpc_get_null_key(i8* %0) #0 {
  %2 = alloca %struct.key*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cred*, align 8
  %5 = alloca %struct.key*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %7, %struct.cred** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load %struct.cred*, %struct.cred** %4, align 8
  %10 = load i32, i32* @KEY_POS_SEARCH, align 4
  %11 = load i32, i32* @KEY_ALLOC_NOT_IN_QUOTA, align 4
  %12 = call %struct.key* @key_alloc(i32* @key_type_rxrpc, i8* %8, i32 0, i32 0, %struct.cred* %9, i32 %10, i32 %11)
  store %struct.key* %12, %struct.key** %5, align 8
  %13 = load %struct.key*, %struct.key** %5, align 8
  %14 = call i64 @IS_ERR(%struct.key* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load %struct.key*, %struct.key** %5, align 8
  store %struct.key* %17, %struct.key** %2, align 8
  br label %32

18:                                               ; preds = %1
  %19 = load %struct.key*, %struct.key** %5, align 8
  %20 = call i32 @key_instantiate_and_link(%struct.key* %19, i32* null, i32 0, i32* null, i32* null)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.key*, %struct.key** %5, align 8
  %25 = call i32 @key_revoke(%struct.key* %24)
  %26 = load %struct.key*, %struct.key** %5, align 8
  %27 = call i32 @key_put(%struct.key* %26)
  %28 = load i32, i32* %6, align 4
  %29 = call %struct.key* @ERR_PTR(i32 %28)
  store %struct.key* %29, %struct.key** %2, align 8
  br label %32

30:                                               ; preds = %18
  %31 = load %struct.key*, %struct.key** %5, align 8
  store %struct.key* %31, %struct.key** %2, align 8
  br label %32

32:                                               ; preds = %30, %23, %16
  %33 = load %struct.key*, %struct.key** %2, align 8
  ret %struct.key* %33
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local %struct.key* @key_alloc(i32*, i8*, i32, i32, %struct.cred*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @key_instantiate_and_link(%struct.key*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @key_revoke(%struct.key*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local %struct.key* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
