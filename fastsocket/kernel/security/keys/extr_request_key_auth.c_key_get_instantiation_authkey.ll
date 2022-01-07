; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_request_key_auth.c_key_get_instantiation_authkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_request_key_auth.c_key_get_instantiation_authkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }
%struct.cred = type { i32 }

@key_type_request_key_auth = common dso_local global i32 0, align 4
@key_get_instantiation_authkey_match = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4
@KEY_FLAG_REVOKED = common dso_local global i32 0, align 4
@EKEYREVOKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.key* @key_get_instantiation_authkey(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.cred*, align 8
  %4 = alloca %struct.key*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %6, %struct.cred** %3, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = load i32, i32* @key_get_instantiation_authkey_match, align 4
  %10 = load %struct.cred*, %struct.cred** %3, align 8
  %11 = call i32 @search_process_keyrings(i32* @key_type_request_key_auth, i8* %8, i32 %9, %struct.cred* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @IS_ERR(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.key* @ERR_CAST(i32 %16)
  store %struct.key* %17, %struct.key** %4, align 8
  %18 = load %struct.key*, %struct.key** %4, align 8
  %19 = load i32, i32* @EAGAIN, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.key* @ERR_PTR(i32 %20)
  %22 = icmp eq %struct.key* %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load i32, i32* @ENOKEY, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.key* @ERR_PTR(i32 %25)
  store %struct.key* %26, %struct.key** %4, align 8
  br label %27

27:                                               ; preds = %23, %15
  br label %43

28:                                               ; preds = %1
  %29 = load i32, i32* %5, align 4
  %30 = call %struct.key* @key_ref_to_ptr(i32 %29)
  store %struct.key* %30, %struct.key** %4, align 8
  %31 = load i32, i32* @KEY_FLAG_REVOKED, align 4
  %32 = load %struct.key*, %struct.key** %4, align 8
  %33 = getelementptr inbounds %struct.key, %struct.key* %32, i32 0, i32 0
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load %struct.key*, %struct.key** %4, align 8
  %38 = call i32 @key_put(%struct.key* %37)
  %39 = load i32, i32* @EKEYREVOKED, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.key* @ERR_PTR(i32 %40)
  store %struct.key* %41, %struct.key** %4, align 8
  br label %42

42:                                               ; preds = %36, %28
  br label %43

43:                                               ; preds = %42, %27
  %44 = load %struct.key*, %struct.key** %4, align 8
  ret %struct.key* %44
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @search_process_keyrings(i32*, i8*, i32, %struct.cred*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local %struct.key* @ERR_CAST(i32) #1

declare dso_local %struct.key* @ERR_PTR(i32) #1

declare dso_local %struct.key* @key_ref_to_ptr(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @key_put(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
