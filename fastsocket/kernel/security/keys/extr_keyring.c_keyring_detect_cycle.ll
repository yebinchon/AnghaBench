; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyring.c_keyring_detect_cycle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyring.c_keyring_detect_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.keyring_list = type { i32, %struct.key** }
%struct.anon = type { %struct.keyring_list*, i32 }

@KEYRING_SEARCH_MAX_DEPTH = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i32 0, align 4
@KEY_FLAG_REVOKED = common dso_local global i32 0, align 4
@key_type_keyring = common dso_local global i32 0, align 4
@ELOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key*, %struct.key*)* @keyring_detect_cycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyring_detect_cycle(%struct.key* %0, %struct.key* %1) #0 {
  %3 = alloca %struct.key*, align 8
  %4 = alloca %struct.key*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.keyring_list*, align 8
  %8 = alloca %struct.key*, align 8
  %9 = alloca %struct.key*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %3, align 8
  store %struct.key* %1, %struct.key** %4, align 8
  %14 = load i32, i32* @KEYRING_SEARCH_MAX_DEPTH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca %struct.anon, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %18 = call i32 (...) @rcu_read_lock()
  %19 = load i32, i32* @EDEADLK, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %13, align 4
  %21 = load %struct.key*, %struct.key** %3, align 8
  %22 = load %struct.key*, %struct.key** %4, align 8
  %23 = icmp eq %struct.key* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %119

25:                                               ; preds = %2
  %26 = load %struct.key*, %struct.key** %4, align 8
  store %struct.key* %26, %struct.key** %8, align 8
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %75, %25
  %28 = load i32, i32* @KEY_FLAG_REVOKED, align 4
  %29 = load %struct.key*, %struct.key** %8, align 8
  %30 = getelementptr inbounds %struct.key, %struct.key* %29, i32 0, i32 2
  %31 = call i64 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %94

34:                                               ; preds = %27
  %35 = load %struct.key*, %struct.key** %8, align 8
  %36 = getelementptr inbounds %struct.key, %struct.key* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.keyring_list* @rcu_dereference(i32 %38)
  store %struct.keyring_list* %39, %struct.keyring_list** %7, align 8
  %40 = load %struct.keyring_list*, %struct.keyring_list** %7, align 8
  %41 = icmp ne %struct.keyring_list* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  br label %94

43:                                               ; preds = %34
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %97, %43
  %45 = load %struct.keyring_list*, %struct.keyring_list** %7, align 8
  %46 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %11, align 4
  %48 = call i32 (...) @smp_rmb()
  br label %49

49:                                               ; preds = %90, %44
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %93

53:                                               ; preds = %49
  %54 = load %struct.keyring_list*, %struct.keyring_list** %7, align 8
  %55 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %54, i32 0, i32 1
  %56 = load %struct.key**, %struct.key*** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.key*, %struct.key** %56, i64 %58
  %60 = load %struct.key*, %struct.key** %59, align 8
  store %struct.key* %60, %struct.key** %9, align 8
  %61 = load %struct.key*, %struct.key** %9, align 8
  %62 = load %struct.key*, %struct.key** %3, align 8
  %63 = icmp eq %struct.key* %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %119

65:                                               ; preds = %53
  %66 = load %struct.key*, %struct.key** %9, align 8
  %67 = getelementptr inbounds %struct.key, %struct.key* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, @key_type_keyring
  br i1 %69, label %70, label %89

70:                                               ; preds = %65
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @KEYRING_SEARCH_MAX_DEPTH, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %116

75:                                               ; preds = %70
  %76 = load %struct.keyring_list*, %struct.keyring_list** %7, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.anon, %struct.anon* %17, i64 %78
  %80 = getelementptr inbounds %struct.anon, %struct.anon* %79, i32 0, i32 0
  store %struct.keyring_list* %76, %struct.keyring_list** %80, align 16
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.anon, %struct.anon* %17, i64 %83
  %85 = getelementptr inbounds %struct.anon, %struct.anon* %84, i32 0, i32 1
  store i32 %81, i32* %85, align 8
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  %88 = load %struct.key*, %struct.key** %9, align 8
  store %struct.key* %88, %struct.key** %8, align 8
  br label %27

89:                                               ; preds = %65
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %49

93:                                               ; preds = %49
  br label %94

94:                                               ; preds = %93, %42, %33
  %95 = load i32, i32* %10, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %94
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.anon, %struct.anon* %17, i64 %101
  %103 = getelementptr inbounds %struct.anon, %struct.anon* %102, i32 0, i32 0
  %104 = load %struct.keyring_list*, %struct.keyring_list** %103, align 16
  store %struct.keyring_list* %104, %struct.keyring_list** %7, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.anon, %struct.anon* %17, i64 %106
  %108 = getelementptr inbounds %struct.anon, %struct.anon* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %12, align 4
  br label %44

111:                                              ; preds = %94
  store i32 0, i32* %13, align 4
  br label %112

112:                                              ; preds = %119, %116, %111
  %113 = call i32 (...) @rcu_read_unlock()
  %114 = load i32, i32* %13, align 4
  %115 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %115)
  ret i32 %114

116:                                              ; preds = %74
  %117 = load i32, i32* @ELOOP, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %13, align 4
  br label %112

119:                                              ; preds = %64, %24
  %120 = load i32, i32* @EDEADLK, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %13, align 4
  br label %112
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rcu_read_lock(...) #2

declare dso_local i64 @test_bit(i32, i32*) #2

declare dso_local %struct.keyring_list* @rcu_dereference(i32) #2

declare dso_local i32 @smp_rmb(...) #2

declare dso_local i32 @rcu_read_unlock(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
