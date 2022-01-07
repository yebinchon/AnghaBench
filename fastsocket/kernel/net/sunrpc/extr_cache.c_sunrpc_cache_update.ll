; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_cache.c_sunrpc_cache_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_cache.c_sunrpc_cache_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_detail = type { i32, i32, i32 (%struct.cache_head*, %struct.cache_head*)*, %struct.cache_head**, i32 (%struct.cache_head*, %struct.cache_head*)*, %struct.cache_head* (...)* }
%struct.cache_head = type { i32, %struct.cache_head*, i32 }

@CACHE_VALID = common dso_local global i32 0, align 4
@CACHE_NEGATIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cache_head* @sunrpc_cache_update(%struct.cache_detail* %0, %struct.cache_head* %1, %struct.cache_head* %2, i32 %3) #0 {
  %5 = alloca %struct.cache_head*, align 8
  %6 = alloca %struct.cache_detail*, align 8
  %7 = alloca %struct.cache_head*, align 8
  %8 = alloca %struct.cache_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cache_head**, align 8
  %11 = alloca %struct.cache_head*, align 8
  store %struct.cache_detail* %0, %struct.cache_detail** %6, align 8
  store %struct.cache_head* %1, %struct.cache_head** %7, align 8
  store %struct.cache_head* %2, %struct.cache_head** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @CACHE_VALID, align 4
  %13 = load %struct.cache_head*, %struct.cache_head** %8, align 8
  %14 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %13, i32 0, i32 2
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %61, label %17

17:                                               ; preds = %4
  %18 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %19 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %18, i32 0, i32 0
  %20 = call i32 @write_lock(i32* %19)
  %21 = load i32, i32* @CACHE_VALID, align 4
  %22 = load %struct.cache_head*, %struct.cache_head** %8, align 8
  %23 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %22, i32 0, i32 2
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %57, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* @CACHE_NEGATIVE, align 4
  %28 = load %struct.cache_head*, %struct.cache_head** %7, align 8
  %29 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %28, i32 0, i32 2
  %30 = call i64 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i32, i32* @CACHE_NEGATIVE, align 4
  %34 = load %struct.cache_head*, %struct.cache_head** %8, align 8
  %35 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %34, i32 0, i32 2
  %36 = call i32 @set_bit(i32 %33, i32* %35)
  br label %44

37:                                               ; preds = %26
  %38 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %39 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %38, i32 0, i32 2
  %40 = load i32 (%struct.cache_head*, %struct.cache_head*)*, i32 (%struct.cache_head*, %struct.cache_head*)** %39, align 8
  %41 = load %struct.cache_head*, %struct.cache_head** %8, align 8
  %42 = load %struct.cache_head*, %struct.cache_head** %7, align 8
  %43 = call i32 %40(%struct.cache_head* %41, %struct.cache_head* %42)
  br label %44

44:                                               ; preds = %37, %32
  %45 = load %struct.cache_head*, %struct.cache_head** %8, align 8
  %46 = load %struct.cache_head*, %struct.cache_head** %7, align 8
  %47 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @cache_fresh_locked(%struct.cache_head* %45, i32 %48)
  %50 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %51 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %50, i32 0, i32 0
  %52 = call i32 @write_unlock(i32* %51)
  %53 = load %struct.cache_head*, %struct.cache_head** %8, align 8
  %54 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %55 = call i32 @cache_fresh_unlocked(%struct.cache_head* %53, %struct.cache_detail* %54)
  %56 = load %struct.cache_head*, %struct.cache_head** %8, align 8
  store %struct.cache_head* %56, %struct.cache_head** %5, align 8
  br label %140

57:                                               ; preds = %17
  %58 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %59 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %58, i32 0, i32 0
  %60 = call i32 @write_unlock(i32* %59)
  br label %61

61:                                               ; preds = %57, %4
  %62 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %63 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %62, i32 0, i32 5
  %64 = load %struct.cache_head* (...)*, %struct.cache_head* (...)** %63, align 8
  %65 = call %struct.cache_head* (...) %64()
  store %struct.cache_head* %65, %struct.cache_head** %11, align 8
  %66 = load %struct.cache_head*, %struct.cache_head** %11, align 8
  %67 = icmp ne %struct.cache_head* %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %61
  %69 = load %struct.cache_head*, %struct.cache_head** %8, align 8
  %70 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %71 = call i32 @cache_put(%struct.cache_head* %69, %struct.cache_detail* %70)
  store %struct.cache_head* null, %struct.cache_head** %5, align 8
  br label %140

72:                                               ; preds = %61
  %73 = load %struct.cache_head*, %struct.cache_head** %11, align 8
  %74 = call i32 @cache_init(%struct.cache_head* %73)
  %75 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %76 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %75, i32 0, i32 4
  %77 = load i32 (%struct.cache_head*, %struct.cache_head*)*, i32 (%struct.cache_head*, %struct.cache_head*)** %76, align 8
  %78 = load %struct.cache_head*, %struct.cache_head** %11, align 8
  %79 = load %struct.cache_head*, %struct.cache_head** %8, align 8
  %80 = call i32 %77(%struct.cache_head* %78, %struct.cache_head* %79)
  %81 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %82 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %81, i32 0, i32 3
  %83 = load %struct.cache_head**, %struct.cache_head*** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.cache_head*, %struct.cache_head** %83, i64 %85
  store %struct.cache_head** %86, %struct.cache_head*** %10, align 8
  %87 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %88 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %87, i32 0, i32 0
  %89 = call i32 @write_lock(i32* %88)
  %90 = load i32, i32* @CACHE_NEGATIVE, align 4
  %91 = load %struct.cache_head*, %struct.cache_head** %7, align 8
  %92 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %91, i32 0, i32 2
  %93 = call i64 @test_bit(i32 %90, i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %72
  %96 = load i32, i32* @CACHE_NEGATIVE, align 4
  %97 = load %struct.cache_head*, %struct.cache_head** %11, align 8
  %98 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %97, i32 0, i32 2
  %99 = call i32 @set_bit(i32 %96, i32* %98)
  br label %107

100:                                              ; preds = %72
  %101 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %102 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %101, i32 0, i32 2
  %103 = load i32 (%struct.cache_head*, %struct.cache_head*)*, i32 (%struct.cache_head*, %struct.cache_head*)** %102, align 8
  %104 = load %struct.cache_head*, %struct.cache_head** %11, align 8
  %105 = load %struct.cache_head*, %struct.cache_head** %7, align 8
  %106 = call i32 %103(%struct.cache_head* %104, %struct.cache_head* %105)
  br label %107

107:                                              ; preds = %100, %95
  %108 = load %struct.cache_head**, %struct.cache_head*** %10, align 8
  %109 = load %struct.cache_head*, %struct.cache_head** %108, align 8
  %110 = load %struct.cache_head*, %struct.cache_head** %11, align 8
  %111 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %110, i32 0, i32 1
  store %struct.cache_head* %109, %struct.cache_head** %111, align 8
  %112 = load %struct.cache_head*, %struct.cache_head** %11, align 8
  %113 = load %struct.cache_head**, %struct.cache_head*** %10, align 8
  store %struct.cache_head* %112, %struct.cache_head** %113, align 8
  %114 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %115 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  %118 = load %struct.cache_head*, %struct.cache_head** %11, align 8
  %119 = call i32 @cache_get(%struct.cache_head* %118)
  %120 = load %struct.cache_head*, %struct.cache_head** %11, align 8
  %121 = load %struct.cache_head*, %struct.cache_head** %7, align 8
  %122 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @cache_fresh_locked(%struct.cache_head* %120, i32 %123)
  %125 = load %struct.cache_head*, %struct.cache_head** %8, align 8
  %126 = call i32 @cache_fresh_locked(%struct.cache_head* %125, i32 0)
  %127 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %128 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %127, i32 0, i32 0
  %129 = call i32 @write_unlock(i32* %128)
  %130 = load %struct.cache_head*, %struct.cache_head** %11, align 8
  %131 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %132 = call i32 @cache_fresh_unlocked(%struct.cache_head* %130, %struct.cache_detail* %131)
  %133 = load %struct.cache_head*, %struct.cache_head** %8, align 8
  %134 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %135 = call i32 @cache_fresh_unlocked(%struct.cache_head* %133, %struct.cache_detail* %134)
  %136 = load %struct.cache_head*, %struct.cache_head** %8, align 8
  %137 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %138 = call i32 @cache_put(%struct.cache_head* %136, %struct.cache_detail* %137)
  %139 = load %struct.cache_head*, %struct.cache_head** %11, align 8
  store %struct.cache_head* %139, %struct.cache_head** %5, align 8
  br label %140

140:                                              ; preds = %107, %68, %44
  %141 = load %struct.cache_head*, %struct.cache_head** %5, align 8
  ret %struct.cache_head* %141
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cache_fresh_locked(%struct.cache_head*, i32) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @cache_fresh_unlocked(%struct.cache_head*, %struct.cache_detail*) #1

declare dso_local i32 @cache_put(%struct.cache_head*, %struct.cache_detail*) #1

declare dso_local i32 @cache_init(%struct.cache_head*) #1

declare dso_local i32 @cache_get(%struct.cache_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
