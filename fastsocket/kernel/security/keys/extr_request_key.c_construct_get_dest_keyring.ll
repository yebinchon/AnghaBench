; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_request_key.c_construct_get_dest_keyring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_request_key.c_construct_get_dest_keyring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.request_key_auth* }
%struct.request_key_auth = type { %struct.key* }
%struct.cred = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.key*, %struct.key* }
%struct.TYPE_6__ = type { %struct.key*, %struct.key* }
%struct.TYPE_5__ = type { i32, %struct.key* }

@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@KEY_FLAG_REVOKED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c" [dk %d]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.key**)* @construct_get_dest_keyring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @construct_get_dest_keyring(%struct.key** %0) #0 {
  %2 = alloca %struct.key**, align 8
  %3 = alloca %struct.request_key_auth*, align 8
  %4 = alloca %struct.cred*, align 8
  %5 = alloca %struct.key*, align 8
  %6 = alloca %struct.key*, align 8
  store %struct.key** %0, %struct.key*** %2, align 8
  %7 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %7, %struct.cred** %4, align 8
  %8 = load %struct.key**, %struct.key*** %2, align 8
  %9 = load %struct.key*, %struct.key** %8, align 8
  store %struct.key* %9, %struct.key** %5, align 8
  %10 = load %struct.key*, %struct.key** %5, align 8
  %11 = call i32 @kenter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.key* %10)
  %12 = load %struct.key*, %struct.key** %5, align 8
  %13 = icmp ne %struct.key* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.key*, %struct.key** %5, align 8
  %16 = call %struct.key* @key_get(%struct.key* %15)
  br label %108

17:                                               ; preds = %1
  %18 = load %struct.cred*, %struct.cred** %4, align 8
  %19 = getelementptr inbounds %struct.cred, %struct.cred* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %105 [
    i32 135, label %21
    i32 132, label %21
    i32 130, label %56
    i32 133, label %65
    i32 131, label %76
    i32 128, label %90
    i32 129, label %97
    i32 134, label %104
  ]

21:                                               ; preds = %17, %17
  %22 = load %struct.cred*, %struct.cred** %4, align 8
  %23 = getelementptr inbounds %struct.cred, %struct.cred* %22, i32 0, i32 4
  %24 = load %struct.key*, %struct.key** %23, align 8
  %25 = icmp ne %struct.key* %24, null
  br i1 %25, label %26, label %55

26:                                               ; preds = %21
  %27 = load %struct.cred*, %struct.cred** %4, align 8
  %28 = getelementptr inbounds %struct.cred, %struct.cred* %27, i32 0, i32 4
  %29 = load %struct.key*, %struct.key** %28, align 8
  store %struct.key* %29, %struct.key** %6, align 8
  %30 = load %struct.key*, %struct.key** %6, align 8
  %31 = getelementptr inbounds %struct.key, %struct.key* %30, i32 0, i32 0
  %32 = call i32 @down_read(i32* %31)
  %33 = load %struct.key*, %struct.key** %6, align 8
  %34 = getelementptr inbounds %struct.key, %struct.key* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.request_key_auth*, %struct.request_key_auth** %35, align 8
  store %struct.request_key_auth* %36, %struct.request_key_auth** %3, align 8
  %37 = load i32, i32* @KEY_FLAG_REVOKED, align 4
  %38 = load %struct.key*, %struct.key** %6, align 8
  %39 = getelementptr inbounds %struct.key, %struct.key* %38, i32 0, i32 1
  %40 = call i32 @test_bit(i32 %37, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %26
  %43 = load %struct.request_key_auth*, %struct.request_key_auth** %3, align 8
  %44 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %43, i32 0, i32 0
  %45 = load %struct.key*, %struct.key** %44, align 8
  %46 = call %struct.key* @key_get(%struct.key* %45)
  store %struct.key* %46, %struct.key** %5, align 8
  br label %47

47:                                               ; preds = %42, %26
  %48 = load %struct.key*, %struct.key** %6, align 8
  %49 = getelementptr inbounds %struct.key, %struct.key* %48, i32 0, i32 0
  %50 = call i32 @up_read(i32* %49)
  %51 = load %struct.key*, %struct.key** %5, align 8
  %52 = icmp ne %struct.key* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %107

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %21
  br label %56

56:                                               ; preds = %17, %55
  %57 = load %struct.cred*, %struct.cred** %4, align 8
  %58 = getelementptr inbounds %struct.cred, %struct.cred* %57, i32 0, i32 3
  %59 = load %struct.key*, %struct.key** %58, align 8
  %60 = call %struct.key* @key_get(%struct.key* %59)
  store %struct.key* %60, %struct.key** %5, align 8
  %61 = load %struct.key*, %struct.key** %5, align 8
  %62 = icmp ne %struct.key* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %107

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %17, %64
  %66 = load %struct.cred*, %struct.cred** %4, align 8
  %67 = getelementptr inbounds %struct.cred, %struct.cred* %66, i32 0, i32 2
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load %struct.key*, %struct.key** %69, align 8
  %71 = call %struct.key* @key_get(%struct.key* %70)
  store %struct.key* %71, %struct.key** %5, align 8
  %72 = load %struct.key*, %struct.key** %5, align 8
  %73 = icmp ne %struct.key* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %107

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %17, %75
  %77 = call i32 (...) @rcu_read_lock()
  %78 = load %struct.cred*, %struct.cred** %4, align 8
  %79 = getelementptr inbounds %struct.cred, %struct.cred* %78, i32 0, i32 2
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call %struct.key* @rcu_dereference(i32 %82)
  %84 = call %struct.key* @key_get(%struct.key* %83)
  store %struct.key* %84, %struct.key** %5, align 8
  %85 = call i32 (...) @rcu_read_unlock()
  %86 = load %struct.key*, %struct.key** %5, align 8
  %87 = icmp ne %struct.key* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %76
  br label %107

89:                                               ; preds = %76
  br label %90

90:                                               ; preds = %17, %89
  %91 = load %struct.cred*, %struct.cred** %4, align 8
  %92 = getelementptr inbounds %struct.cred, %struct.cred* %91, i32 0, i32 1
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load %struct.key*, %struct.key** %94, align 8
  %96 = call %struct.key* @key_get(%struct.key* %95)
  store %struct.key* %96, %struct.key** %5, align 8
  br label %107

97:                                               ; preds = %17
  %98 = load %struct.cred*, %struct.cred** %4, align 8
  %99 = getelementptr inbounds %struct.cred, %struct.cred* %98, i32 0, i32 1
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load %struct.key*, %struct.key** %101, align 8
  %103 = call %struct.key* @key_get(%struct.key* %102)
  store %struct.key* %103, %struct.key** %5, align 8
  br label %107

104:                                              ; preds = %17
  br label %105

105:                                              ; preds = %17, %104
  %106 = call i32 (...) @BUG()
  br label %107

107:                                              ; preds = %105, %97, %90, %88, %74, %63, %53
  br label %108

108:                                              ; preds = %107, %14
  %109 = load %struct.key*, %struct.key** %5, align 8
  %110 = load %struct.key**, %struct.key*** %2, align 8
  store %struct.key* %109, %struct.key** %110, align 8
  %111 = load %struct.key*, %struct.key** %5, align 8
  %112 = call i32 @key_serial(%struct.key* %111)
  %113 = call i32 @kleave(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  ret void
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @kenter(i8*, %struct.key*) #1

declare dso_local %struct.key* @key_get(%struct.key*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.key* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @kleave(i8*, i32) #1

declare dso_local i32 @key_serial(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
