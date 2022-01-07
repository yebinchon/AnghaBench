; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_alloc_session.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_alloc_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_session = type { %struct.nfsd4_session** }

@NFSD_MAX_SLOTS_PER_SESSION = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfsd4_session* (i32, i32)* @alloc_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfsd4_session* @alloc_session(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.nfsd4_session*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfsd4_session*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @NFSD_MAX_SLOTS_PER_SESSION, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 8
  %12 = add i64 %11, 8
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ugt i64 %12, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUILD_BUG_ON(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 8, %23
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kzalloc(i32 %25, i32 %26)
  %28 = bitcast i8* %27 to %struct.nfsd4_session*
  store %struct.nfsd4_session* %28, %struct.nfsd4_session** %6, align 8
  %29 = load %struct.nfsd4_session*, %struct.nfsd4_session** %6, align 8
  %30 = icmp ne %struct.nfsd4_session* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %2
  store %struct.nfsd4_session* null, %struct.nfsd4_session** %3, align 8
  br label %84

32:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %62, %32
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 4, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i8* @kzalloc(i32 %42, i32 %43)
  %45 = bitcast i8* %44 to %struct.nfsd4_session*
  %46 = load %struct.nfsd4_session*, %struct.nfsd4_session** %6, align 8
  %47 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %46, i32 0, i32 0
  %48 = load %struct.nfsd4_session**, %struct.nfsd4_session*** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.nfsd4_session*, %struct.nfsd4_session** %48, i64 %50
  store %struct.nfsd4_session* %45, %struct.nfsd4_session** %51, align 8
  %52 = load %struct.nfsd4_session*, %struct.nfsd4_session** %6, align 8
  %53 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %52, i32 0, i32 0
  %54 = load %struct.nfsd4_session**, %struct.nfsd4_session*** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.nfsd4_session*, %struct.nfsd4_session** %54, i64 %56
  %58 = load %struct.nfsd4_session*, %struct.nfsd4_session** %57, align 8
  %59 = icmp ne %struct.nfsd4_session* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %37
  br label %67

61:                                               ; preds = %37
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %33

65:                                               ; preds = %33
  %66 = load %struct.nfsd4_session*, %struct.nfsd4_session** %6, align 8
  store %struct.nfsd4_session* %66, %struct.nfsd4_session** %3, align 8
  br label %84

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %72, %67
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %8, align 4
  %71 = icmp ne i32 %69, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = load %struct.nfsd4_session*, %struct.nfsd4_session** %6, align 8
  %74 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %73, i32 0, i32 0
  %75 = load %struct.nfsd4_session**, %struct.nfsd4_session*** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.nfsd4_session*, %struct.nfsd4_session** %75, i64 %77
  %79 = load %struct.nfsd4_session*, %struct.nfsd4_session** %78, align 8
  %80 = call i32 @kfree(%struct.nfsd4_session* %79)
  br label %68

81:                                               ; preds = %68
  %82 = load %struct.nfsd4_session*, %struct.nfsd4_session** %6, align 8
  %83 = call i32 @kfree(%struct.nfsd4_session* %82)
  store %struct.nfsd4_session* null, %struct.nfsd4_session** %3, align 8
  br label %84

84:                                               ; preds = %81, %65, %31
  %85 = load %struct.nfsd4_session*, %struct.nfsd4_session** %3, align 8
  ret %struct.nfsd4_session* %85
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.nfsd4_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
