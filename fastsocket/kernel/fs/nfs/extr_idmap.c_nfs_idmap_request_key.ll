; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_idmap.c_nfs_idmap_request_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_idmap.c_nfs_idmap_request_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32 }
%struct.key = type { i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.user_key_payload = type { i32, i64, i32, %struct.TYPE_2__ }

@id_resolver_cache = common dso_local global i32 0, align 4
@key_type_id_resolver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@KEY_USR_VIEW = common dso_local global i32 0, align 4
@KEY_USR_WRITE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i8*, i64)* @nfs_idmap_request_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfs_idmap_request_key(i8* %0, i64 %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.cred*, align 8
  %12 = alloca %struct.key*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.user_key_payload*, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = call i64 @nfs_idmap_get_desc(i8* %16, i64 %17, i8* %18, i32 %20, i8** %13)
  store i64 %21, i64* %15, align 8
  %22 = load i64, i64* %15, align 8
  %23 = icmp ule i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  br label %96

25:                                               ; preds = %5
  %26 = load i32, i32* @id_resolver_cache, align 4
  %27 = call %struct.cred* @override_creds(i32 %26)
  store %struct.cred* %27, %struct.cred** %11, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = call %struct.user_key_payload* @request_key(i32* @key_type_id_resolver, i8* %28, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %30 = bitcast %struct.user_key_payload* %29 to %struct.key*
  store %struct.key* %30, %struct.key** %12, align 8
  %31 = load %struct.cred*, %struct.cred** %11, align 8
  %32 = call i32 @revert_creds(%struct.cred* %31)
  %33 = load i8*, i8** %13, align 8
  %34 = call i32 @kfree(i8* %33)
  %35 = load %struct.key*, %struct.key** %12, align 8
  %36 = bitcast %struct.key* %35 to %struct.user_key_payload*
  %37 = call i64 @IS_ERR(%struct.user_key_payload* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %25
  %40 = load %struct.key*, %struct.key** %12, align 8
  %41 = bitcast %struct.key* %40 to %struct.user_key_payload*
  %42 = call i64 @PTR_ERR(%struct.user_key_payload* %41)
  store i64 %42, i64* %15, align 8
  br label %96

43:                                               ; preds = %25
  %44 = call i32 (...) @rcu_read_lock()
  %45 = load i32, i32* @KEY_USR_VIEW, align 4
  %46 = load i32, i32* @KEY_USR_WRITE, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.key*, %struct.key** %12, align 8
  %49 = getelementptr inbounds %struct.key, %struct.key* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load %struct.key*, %struct.key** %12, align 8
  %53 = bitcast %struct.key* %52 to %struct.user_key_payload*
  %54 = call i64 @key_validate(%struct.user_key_payload* %53)
  store i64 %54, i64* %15, align 8
  %55 = load i64, i64* %15, align 8
  %56 = icmp ult i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %43
  br label %91

58:                                               ; preds = %43
  %59 = load %struct.key*, %struct.key** %12, align 8
  %60 = getelementptr inbounds %struct.key, %struct.key* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.user_key_payload* @rcu_dereference(i32 %62)
  store %struct.user_key_payload* %63, %struct.user_key_payload** %14, align 8
  %64 = load %struct.user_key_payload*, %struct.user_key_payload** %14, align 8
  %65 = call i64 @IS_ERR_OR_NULL(%struct.user_key_payload* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load %struct.user_key_payload*, %struct.user_key_payload** %14, align 8
  %69 = call i64 @PTR_ERR(%struct.user_key_payload* %68)
  store i64 %69, i64* %15, align 8
  br label %91

70:                                               ; preds = %58
  %71 = load %struct.user_key_payload*, %struct.user_key_payload** %14, align 8
  %72 = getelementptr inbounds %struct.user_key_payload, %struct.user_key_payload* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %15, align 8
  %74 = load i64, i64* %15, align 8
  %75 = icmp ugt i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %70
  %77 = load i64, i64* %15, align 8
  %78 = load i64, i64* %10, align 8
  %79 = icmp ule i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = load i8*, i8** %9, align 8
  %82 = load %struct.user_key_payload*, %struct.user_key_payload** %14, align 8
  %83 = getelementptr inbounds %struct.user_key_payload, %struct.user_key_payload* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i64, i64* %15, align 8
  %86 = call i32 @memcpy(i8* %81, i32 %84, i64 %85)
  br label %90

87:                                               ; preds = %76, %70
  %88 = load i64, i64* @EINVAL, align 8
  %89 = sub i64 0, %88
  store i64 %89, i64* %15, align 8
  br label %90

90:                                               ; preds = %87, %80
  br label %91

91:                                               ; preds = %90, %67, %57
  %92 = call i32 (...) @rcu_read_unlock()
  %93 = load %struct.key*, %struct.key** %12, align 8
  %94 = bitcast %struct.key* %93 to %struct.user_key_payload*
  %95 = call i32 @key_put(%struct.user_key_payload* %94)
  br label %96

96:                                               ; preds = %91, %39, %24
  %97 = load i64, i64* %15, align 8
  ret i64 %97
}

declare dso_local i64 @nfs_idmap_get_desc(i8*, i64, i8*, i32, i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.cred* @override_creds(i32) #1

declare dso_local %struct.user_key_payload* @request_key(i32*, i8*, i8*) #1

declare dso_local i32 @revert_creds(%struct.cred*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i64 @IS_ERR(%struct.user_key_payload*) #1

declare dso_local i64 @PTR_ERR(%struct.user_key_payload*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @key_validate(%struct.user_key_payload*) #1

declare dso_local %struct.user_key_payload* @rcu_dereference(i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.user_key_payload*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @key_put(%struct.user_key_payload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
