; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_cache.c_sunrpc_cache_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_cache.c_sunrpc_cache_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_detail = type { i32, i32, i64 (%struct.cache_head*, %struct.cache_head*)*, i32 (%struct.cache_head*, %struct.cache_head*)*, %struct.cache_head* (...)*, %struct.cache_head** }
%struct.cache_head = type { %struct.cache_head* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cache_head* @sunrpc_cache_lookup(%struct.cache_detail* %0, %struct.cache_head* %1, i32 %2) #0 {
  %4 = alloca %struct.cache_head*, align 8
  %5 = alloca %struct.cache_detail*, align 8
  %6 = alloca %struct.cache_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cache_head**, align 8
  %9 = alloca %struct.cache_head**, align 8
  %10 = alloca %struct.cache_head*, align 8
  %11 = alloca %struct.cache_head*, align 8
  %12 = alloca %struct.cache_head*, align 8
  %13 = alloca %struct.cache_head*, align 8
  store %struct.cache_detail* %0, %struct.cache_detail** %5, align 8
  store %struct.cache_head* %1, %struct.cache_head** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.cache_head* null, %struct.cache_head** %10, align 8
  store %struct.cache_head* null, %struct.cache_head** %11, align 8
  %14 = load %struct.cache_detail*, %struct.cache_detail** %5, align 8
  %15 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %14, i32 0, i32 5
  %16 = load %struct.cache_head**, %struct.cache_head*** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.cache_head*, %struct.cache_head** %16, i64 %18
  store %struct.cache_head** %19, %struct.cache_head*** %8, align 8
  %20 = load %struct.cache_detail*, %struct.cache_detail** %5, align 8
  %21 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %20, i32 0, i32 0
  %22 = call i32 @read_lock(i32* %21)
  %23 = load %struct.cache_head**, %struct.cache_head*** %8, align 8
  store %struct.cache_head** %23, %struct.cache_head*** %9, align 8
  br label %24

24:                                               ; preds = %52, %3
  %25 = load %struct.cache_head**, %struct.cache_head*** %9, align 8
  %26 = load %struct.cache_head*, %struct.cache_head** %25, align 8
  %27 = icmp ne %struct.cache_head* %26, null
  br i1 %27, label %28, label %56

28:                                               ; preds = %24
  %29 = load %struct.cache_head**, %struct.cache_head*** %9, align 8
  %30 = load %struct.cache_head*, %struct.cache_head** %29, align 8
  store %struct.cache_head* %30, %struct.cache_head** %12, align 8
  %31 = load %struct.cache_detail*, %struct.cache_detail** %5, align 8
  %32 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %31, i32 0, i32 2
  %33 = load i64 (%struct.cache_head*, %struct.cache_head*)*, i64 (%struct.cache_head*, %struct.cache_head*)** %32, align 8
  %34 = load %struct.cache_head*, %struct.cache_head** %12, align 8
  %35 = load %struct.cache_head*, %struct.cache_head** %6, align 8
  %36 = call i64 %33(%struct.cache_head* %34, %struct.cache_head* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %28
  %39 = load %struct.cache_detail*, %struct.cache_detail** %5, align 8
  %40 = load %struct.cache_head*, %struct.cache_head** %12, align 8
  %41 = call i64 @cache_is_expired(%struct.cache_detail* %39, %struct.cache_head* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %56

44:                                               ; preds = %38
  %45 = load %struct.cache_head*, %struct.cache_head** %12, align 8
  %46 = call i32 @cache_get(%struct.cache_head* %45)
  %47 = load %struct.cache_detail*, %struct.cache_detail** %5, align 8
  %48 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %47, i32 0, i32 0
  %49 = call i32 @read_unlock(i32* %48)
  %50 = load %struct.cache_head*, %struct.cache_head** %12, align 8
  store %struct.cache_head* %50, %struct.cache_head** %4, align 8
  br label %150

51:                                               ; preds = %28
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.cache_head**, %struct.cache_head*** %9, align 8
  %54 = load %struct.cache_head*, %struct.cache_head** %53, align 8
  %55 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %54, i32 0, i32 0
  store %struct.cache_head** %55, %struct.cache_head*** %9, align 8
  br label %24

56:                                               ; preds = %43, %24
  %57 = load %struct.cache_detail*, %struct.cache_detail** %5, align 8
  %58 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %57, i32 0, i32 0
  %59 = call i32 @read_unlock(i32* %58)
  %60 = load %struct.cache_detail*, %struct.cache_detail** %5, align 8
  %61 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %60, i32 0, i32 4
  %62 = load %struct.cache_head* (...)*, %struct.cache_head* (...)** %61, align 8
  %63 = call %struct.cache_head* (...) %62()
  store %struct.cache_head* %63, %struct.cache_head** %10, align 8
  %64 = load %struct.cache_head*, %struct.cache_head** %10, align 8
  %65 = icmp ne %struct.cache_head* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %56
  store %struct.cache_head* null, %struct.cache_head** %4, align 8
  br label %150

67:                                               ; preds = %56
  %68 = load %struct.cache_head*, %struct.cache_head** %10, align 8
  %69 = call i32 @cache_init(%struct.cache_head* %68)
  %70 = load %struct.cache_detail*, %struct.cache_detail** %5, align 8
  %71 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %70, i32 0, i32 3
  %72 = load i32 (%struct.cache_head*, %struct.cache_head*)*, i32 (%struct.cache_head*, %struct.cache_head*)** %71, align 8
  %73 = load %struct.cache_head*, %struct.cache_head** %10, align 8
  %74 = load %struct.cache_head*, %struct.cache_head** %6, align 8
  %75 = call i32 %72(%struct.cache_head* %73, %struct.cache_head* %74)
  %76 = load %struct.cache_detail*, %struct.cache_detail** %5, align 8
  %77 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %76, i32 0, i32 0
  %78 = call i32 @write_lock(i32* %77)
  %79 = load %struct.cache_head**, %struct.cache_head*** %8, align 8
  store %struct.cache_head** %79, %struct.cache_head*** %9, align 8
  br label %80

80:                                               ; preds = %122, %67
  %81 = load %struct.cache_head**, %struct.cache_head*** %9, align 8
  %82 = load %struct.cache_head*, %struct.cache_head** %81, align 8
  %83 = icmp ne %struct.cache_head* %82, null
  br i1 %83, label %84, label %126

84:                                               ; preds = %80
  %85 = load %struct.cache_head**, %struct.cache_head*** %9, align 8
  %86 = load %struct.cache_head*, %struct.cache_head** %85, align 8
  store %struct.cache_head* %86, %struct.cache_head** %13, align 8
  %87 = load %struct.cache_detail*, %struct.cache_detail** %5, align 8
  %88 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %87, i32 0, i32 2
  %89 = load i64 (%struct.cache_head*, %struct.cache_head*)*, i64 (%struct.cache_head*, %struct.cache_head*)** %88, align 8
  %90 = load %struct.cache_head*, %struct.cache_head** %13, align 8
  %91 = load %struct.cache_head*, %struct.cache_head** %6, align 8
  %92 = call i64 %89(%struct.cache_head* %90, %struct.cache_head* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %121

94:                                               ; preds = %84
  %95 = load %struct.cache_detail*, %struct.cache_detail** %5, align 8
  %96 = load %struct.cache_head*, %struct.cache_head** %13, align 8
  %97 = call i64 @cache_is_expired(%struct.cache_detail* %95, %struct.cache_head* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %94
  %100 = load %struct.cache_head*, %struct.cache_head** %13, align 8
  %101 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %100, i32 0, i32 0
  %102 = load %struct.cache_head*, %struct.cache_head** %101, align 8
  %103 = load %struct.cache_head**, %struct.cache_head*** %9, align 8
  store %struct.cache_head* %102, %struct.cache_head** %103, align 8
  %104 = load %struct.cache_head*, %struct.cache_head** %13, align 8
  %105 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %104, i32 0, i32 0
  store %struct.cache_head* null, %struct.cache_head** %105, align 8
  %106 = load %struct.cache_detail*, %struct.cache_detail** %5, align 8
  %107 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %107, align 4
  %110 = load %struct.cache_head*, %struct.cache_head** %13, align 8
  store %struct.cache_head* %110, %struct.cache_head** %11, align 8
  br label %126

111:                                              ; preds = %94
  %112 = load %struct.cache_head*, %struct.cache_head** %13, align 8
  %113 = call i32 @cache_get(%struct.cache_head* %112)
  %114 = load %struct.cache_detail*, %struct.cache_detail** %5, align 8
  %115 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %114, i32 0, i32 0
  %116 = call i32 @write_unlock(i32* %115)
  %117 = load %struct.cache_head*, %struct.cache_head** %10, align 8
  %118 = load %struct.cache_detail*, %struct.cache_detail** %5, align 8
  %119 = call i32 @cache_put(%struct.cache_head* %117, %struct.cache_detail* %118)
  %120 = load %struct.cache_head*, %struct.cache_head** %13, align 8
  store %struct.cache_head* %120, %struct.cache_head** %4, align 8
  br label %150

121:                                              ; preds = %84
  br label %122

122:                                              ; preds = %121
  %123 = load %struct.cache_head**, %struct.cache_head*** %9, align 8
  %124 = load %struct.cache_head*, %struct.cache_head** %123, align 8
  %125 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %124, i32 0, i32 0
  store %struct.cache_head** %125, %struct.cache_head*** %9, align 8
  br label %80

126:                                              ; preds = %99, %80
  %127 = load %struct.cache_head**, %struct.cache_head*** %8, align 8
  %128 = load %struct.cache_head*, %struct.cache_head** %127, align 8
  %129 = load %struct.cache_head*, %struct.cache_head** %10, align 8
  %130 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %129, i32 0, i32 0
  store %struct.cache_head* %128, %struct.cache_head** %130, align 8
  %131 = load %struct.cache_head*, %struct.cache_head** %10, align 8
  %132 = load %struct.cache_head**, %struct.cache_head*** %8, align 8
  store %struct.cache_head* %131, %struct.cache_head** %132, align 8
  %133 = load %struct.cache_detail*, %struct.cache_detail** %5, align 8
  %134 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  %137 = load %struct.cache_head*, %struct.cache_head** %10, align 8
  %138 = call i32 @cache_get(%struct.cache_head* %137)
  %139 = load %struct.cache_detail*, %struct.cache_detail** %5, align 8
  %140 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %139, i32 0, i32 0
  %141 = call i32 @write_unlock(i32* %140)
  %142 = load %struct.cache_head*, %struct.cache_head** %11, align 8
  %143 = icmp ne %struct.cache_head* %142, null
  br i1 %143, label %144, label %148

144:                                              ; preds = %126
  %145 = load %struct.cache_head*, %struct.cache_head** %11, align 8
  %146 = load %struct.cache_detail*, %struct.cache_detail** %5, align 8
  %147 = call i32 @cache_put(%struct.cache_head* %145, %struct.cache_detail* %146)
  br label %148

148:                                              ; preds = %144, %126
  %149 = load %struct.cache_head*, %struct.cache_head** %10, align 8
  store %struct.cache_head* %149, %struct.cache_head** %4, align 8
  br label %150

150:                                              ; preds = %148, %111, %66, %44
  %151 = load %struct.cache_head*, %struct.cache_head** %4, align 8
  ret %struct.cache_head* %151
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i64 @cache_is_expired(%struct.cache_detail*, %struct.cache_head*) #1

declare dso_local i32 @cache_get(%struct.cache_head*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @cache_init(%struct.cache_head*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @cache_put(%struct.cache_head*, %struct.cache_detail*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
