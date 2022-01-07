; ModuleID = '/home/carl/AnghaBench/freebsd/bin/df/extr_df.c_regetmntinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/df/extr_df.c_regetmntinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i32, i32 }

@nflag = common dso_local global i64 0, align 8
@MNT_WAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s stats possibly stale\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.statfs**, i64, i8**)* @regetmntinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @regetmntinfo(%struct.statfs** %0, i64 %1, i8** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.statfs**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.statfs*, align 8
  store %struct.statfs** %0, %struct.statfs*** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8** %2, i8*** %7, align 8
  %12 = load i8**, i8*** %7, align 8
  %13 = icmp eq i8** %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load i64, i64* @nflag, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i64, i64* %6, align 8
  br label %23

19:                                               ; preds = %14
  %20 = load %struct.statfs**, %struct.statfs*** %5, align 8
  %21 = load i32, i32* @MNT_WAIT, align 4
  %22 = call i64 @getmntinfo(%struct.statfs** %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %17
  %24 = phi i64 [ %18, %17 ], [ %22, %19 ]
  store i64 %24, i64* %4, align 8
  br label %97

25:                                               ; preds = %3
  %26 = load %struct.statfs**, %struct.statfs*** %5, align 8
  %27 = load %struct.statfs*, %struct.statfs** %26, align 8
  store %struct.statfs* %27, %struct.statfs** %11, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %91, %25
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %6, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %94

33:                                               ; preds = %28
  %34 = load %struct.statfs*, %struct.statfs** %11, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.statfs, %struct.statfs* %34, i64 %36
  %38 = getelementptr inbounds %struct.statfs, %struct.statfs* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i8**, i8*** %7, align 8
  %41 = call i64 @checkvfsname(i32 %39, i8** %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %91

44:                                               ; preds = %33
  %45 = load %struct.statfs*, %struct.statfs** %11, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.statfs, %struct.statfs* %45, i64 %47
  %49 = getelementptr inbounds %struct.statfs, %struct.statfs* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.statfs*, %struct.statfs** %11, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.statfs, %struct.statfs* %51, i64 %53
  %55 = call i32 @statfs(i32 %50, %struct.statfs* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i64, i64* @nflag, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %44
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %88

61:                                               ; preds = %58, %44
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %87

65:                                               ; preds = %61
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load %struct.statfs*, %struct.statfs** %11, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.statfs, %struct.statfs* %69, i64 %71
  %73 = getelementptr inbounds %struct.statfs, %struct.statfs* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @xo_warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %68, %65
  %77 = load %struct.statfs*, %struct.statfs** %11, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.statfs, %struct.statfs* %77, i64 %79
  %81 = load %struct.statfs*, %struct.statfs** %11, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.statfs, %struct.statfs* %81, i64 %83
  %85 = bitcast %struct.statfs* %80 to i8*
  %86 = bitcast %struct.statfs* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %85, i8* align 4 %86, i64 8, i1 false)
  br label %87

87:                                               ; preds = %76, %61
  br label %88

88:                                               ; preds = %87, %58
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %88, %43
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %28

94:                                               ; preds = %28
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %4, align 8
  br label %97

97:                                               ; preds = %94, %23
  %98 = load i64, i64* %4, align 8
  ret i64 %98
}

declare dso_local i64 @getmntinfo(%struct.statfs**, i32) #1

declare dso_local i64 @checkvfsname(i32, i8**) #1

declare dso_local i32 @statfs(i32, %struct.statfs*) #1

declare dso_local i32 @xo_warnx(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
