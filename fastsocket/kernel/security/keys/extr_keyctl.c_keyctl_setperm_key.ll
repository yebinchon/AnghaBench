; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyctl.c_keyctl_setperm_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyctl.c_keyctl_setperm_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i64, i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@KEY_POS_ALL = common dso_local global i32 0, align 4
@KEY_USR_ALL = common dso_local global i32 0, align 4
@KEY_GRP_ALL = common dso_local global i32 0, align 4
@KEY_OTH_ALL = common dso_local global i32 0, align 4
@KEY_LOOKUP_CREATE = common dso_local global i32 0, align 4
@KEY_LOOKUP_PARTIAL = common dso_local global i32 0, align 4
@KEY_SETATTR = common dso_local global i32 0, align 4
@EACCES = common dso_local global i64 0, align 8
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @keyctl_setperm_key(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.key*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* @EINVAL, align 8
  %9 = sub nsw i64 0, %8
  store i64 %9, i64* %7, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @KEY_POS_ALL, align 4
  %12 = load i32, i32* @KEY_USR_ALL, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @KEY_GRP_ALL, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @KEY_OTH_ALL, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = and i32 %10, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %62

22:                                               ; preds = %2
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @KEY_LOOKUP_CREATE, align 4
  %25 = load i32, i32* @KEY_LOOKUP_PARTIAL, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @KEY_SETATTR, align 4
  %28 = call i32 @lookup_user_key(i32 %23, i32 %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @PTR_ERR(i32 %33)
  store i64 %34, i64* %7, align 8
  br label %62

35:                                               ; preds = %22
  %36 = load i32, i32* %6, align 4
  %37 = call %struct.key* @key_ref_to_ptr(i32 %36)
  store %struct.key* %37, %struct.key** %5, align 8
  %38 = load i64, i64* @EACCES, align 8
  %39 = sub nsw i64 0, %38
  store i64 %39, i64* %7, align 8
  %40 = load %struct.key*, %struct.key** %5, align 8
  %41 = getelementptr inbounds %struct.key, %struct.key* %40, i32 0, i32 2
  %42 = call i32 @down_write(i32* %41)
  %43 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %44 = call i64 @capable(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %35
  %47 = load %struct.key*, %struct.key** %5, align 8
  %48 = getelementptr inbounds %struct.key, %struct.key* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 (...) @current_fsuid()
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46, %35
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.key*, %struct.key** %5, align 8
  %55 = getelementptr inbounds %struct.key, %struct.key* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  store i64 0, i64* %7, align 8
  br label %56

56:                                               ; preds = %52, %46
  %57 = load %struct.key*, %struct.key** %5, align 8
  %58 = getelementptr inbounds %struct.key, %struct.key* %57, i32 0, i32 2
  %59 = call i32 @up_write(i32* %58)
  %60 = load %struct.key*, %struct.key** %5, align 8
  %61 = call i32 @key_put(%struct.key* %60)
  br label %62

62:                                               ; preds = %56, %32, %21
  %63 = load i64, i64* %7, align 8
  ret i64 %63
}

declare dso_local i32 @lookup_user_key(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i64 @PTR_ERR(i32) #1

declare dso_local %struct.key* @key_ref_to_ptr(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @capable(i32) #1

declare dso_local i64 @current_fsuid(...) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @key_put(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
