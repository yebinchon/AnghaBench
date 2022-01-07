; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_cookie.c___fscache_acquire_cookie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_cookie.c___fscache_acquire_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_cookie = type { i32, %struct.fscache_cookie_def*, i32, i64, i8*, %struct.fscache_cookie*, i32, i32 }
%struct.fscache_cookie_def = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [13 x i8] c"{%s},{%s},%p\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"<no-parent>\00", align 1
@fscache_n_acquires = common dso_local global i32 0, align 4
@fscache_n_acquires_null = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c" [no parent]\00", align 1
@fscache_cookie_jar = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@fscache_n_acquires_oom = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c" [ENOMEM]\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_WAIT = common dso_local global i32 0, align 4
@fscache_n_cookie_index = common dso_local global i32 0, align 4
@fscache_n_cookie_data = common dso_local global i32 0, align 4
@fscache_n_cookie_special = common dso_local global i32 0, align 4
@fscache_n_acquires_nobufs = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c" = NULL\00", align 1
@fscache_n_acquires_ok = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c" = %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fscache_cookie* @__fscache_acquire_cookie(%struct.fscache_cookie* %0, %struct.fscache_cookie_def* %1, i8* %2) #0 {
  %4 = alloca %struct.fscache_cookie*, align 8
  %5 = alloca %struct.fscache_cookie*, align 8
  %6 = alloca %struct.fscache_cookie_def*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.fscache_cookie*, align 8
  store %struct.fscache_cookie* %0, %struct.fscache_cookie** %5, align 8
  store %struct.fscache_cookie_def* %1, %struct.fscache_cookie_def** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.fscache_cookie_def*, %struct.fscache_cookie_def** %6, align 8
  %10 = icmp ne %struct.fscache_cookie_def* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %15 = icmp ne %struct.fscache_cookie* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %18 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %17, i32 0, i32 1
  %19 = load %struct.fscache_cookie_def*, %struct.fscache_cookie_def** %18, align 8
  %20 = getelementptr inbounds %struct.fscache_cookie_def, %struct.fscache_cookie_def* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = bitcast i32* %21 to i8*
  br label %24

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %23, %16
  %25 = phi i8* [ %22, %16 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %23 ]
  %26 = load %struct.fscache_cookie_def*, %struct.fscache_cookie_def** %6, align 8
  %27 = getelementptr inbounds %struct.fscache_cookie_def, %struct.fscache_cookie_def* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @_enter(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %25, i32* %28, i8* %29)
  %31 = call i32 @fscache_stat(i32* @fscache_n_acquires)
  %32 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %33 = icmp ne %struct.fscache_cookie* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %24
  %35 = call i32 @fscache_stat(i32* @fscache_n_acquires_null)
  %36 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store %struct.fscache_cookie* null, %struct.fscache_cookie** %4, align 8
  br label %147

37:                                               ; preds = %24
  %38 = load %struct.fscache_cookie_def*, %struct.fscache_cookie_def** %6, align 8
  %39 = getelementptr inbounds %struct.fscache_cookie_def, %struct.fscache_cookie_def* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load %struct.fscache_cookie_def*, %struct.fscache_cookie_def** %6, align 8
  %46 = getelementptr inbounds %struct.fscache_cookie_def, %struct.fscache_cookie_def* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @BUG_ON(i32 %52)
  %54 = load %struct.fscache_cookie_def*, %struct.fscache_cookie_def** %6, align 8
  %55 = getelementptr inbounds %struct.fscache_cookie_def, %struct.fscache_cookie_def* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 128
  br i1 %57, label %58, label %65

58:                                               ; preds = %37
  %59 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %60 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %59, i32 0, i32 1
  %61 = load %struct.fscache_cookie_def*, %struct.fscache_cookie_def** %60, align 8
  %62 = getelementptr inbounds %struct.fscache_cookie_def, %struct.fscache_cookie_def* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 128
  br label %65

65:                                               ; preds = %58, %37
  %66 = phi i1 [ false, %37 ], [ %64, %58 ]
  %67 = zext i1 %66 to i32
  %68 = call i32 @BUG_ON(i32 %67)
  %69 = load i32, i32* @fscache_cookie_jar, align 4
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call %struct.fscache_cookie* @kmem_cache_alloc(i32 %69, i32 %70)
  store %struct.fscache_cookie* %71, %struct.fscache_cookie** %8, align 8
  %72 = load %struct.fscache_cookie*, %struct.fscache_cookie** %8, align 8
  %73 = icmp ne %struct.fscache_cookie* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %65
  %75 = call i32 @fscache_stat(i32* @fscache_n_acquires_oom)
  %76 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store %struct.fscache_cookie* null, %struct.fscache_cookie** %4, align 8
  br label %147

77:                                               ; preds = %65
  %78 = load %struct.fscache_cookie*, %struct.fscache_cookie** %8, align 8
  %79 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %78, i32 0, i32 6
  %80 = call i32 @atomic_set(i32* %79, i32 1)
  %81 = load %struct.fscache_cookie*, %struct.fscache_cookie** %8, align 8
  %82 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %81, i32 0, i32 0
  %83 = call i32 @atomic_set(i32* %82, i32 0)
  %84 = load %struct.fscache_cookie*, %struct.fscache_cookie** %8, align 8
  %85 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %84, i32 0, i32 7
  %86 = call i32 @atomic_set(i32* %85, i32 1)
  %87 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %88 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %87, i32 0, i32 6
  %89 = call i32 @atomic_inc(i32* %88)
  %90 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %91 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %90, i32 0, i32 0
  %92 = call i32 @atomic_inc(i32* %91)
  %93 = load %struct.fscache_cookie_def*, %struct.fscache_cookie_def** %6, align 8
  %94 = load %struct.fscache_cookie*, %struct.fscache_cookie** %8, align 8
  %95 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %94, i32 0, i32 1
  store %struct.fscache_cookie_def* %93, %struct.fscache_cookie_def** %95, align 8
  %96 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %97 = load %struct.fscache_cookie*, %struct.fscache_cookie** %8, align 8
  %98 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %97, i32 0, i32 5
  store %struct.fscache_cookie* %96, %struct.fscache_cookie** %98, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = load %struct.fscache_cookie*, %struct.fscache_cookie** %8, align 8
  %101 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %100, i32 0, i32 4
  store i8* %99, i8** %101, align 8
  %102 = load %struct.fscache_cookie*, %struct.fscache_cookie** %8, align 8
  %103 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %102, i32 0, i32 3
  store i64 0, i64* %103, align 8
  %104 = load %struct.fscache_cookie*, %struct.fscache_cookie** %8, align 8
  %105 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %104, i32 0, i32 2
  %106 = load i32, i32* @GFP_NOFS, align 4
  %107 = load i32, i32* @__GFP_WAIT, align 4
  %108 = xor i32 %107, -1
  %109 = and i32 %106, %108
  %110 = call i32 @INIT_RADIX_TREE(i32* %105, i32 %109)
  %111 = load %struct.fscache_cookie*, %struct.fscache_cookie** %8, align 8
  %112 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %111, i32 0, i32 1
  %113 = load %struct.fscache_cookie_def*, %struct.fscache_cookie_def** %112, align 8
  %114 = getelementptr inbounds %struct.fscache_cookie_def, %struct.fscache_cookie_def* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  switch i32 %115, label %120 [
    i32 128, label %116
    i32 129, label %118
  ]

116:                                              ; preds = %77
  %117 = call i32 @fscache_stat(i32* @fscache_n_cookie_index)
  br label %122

118:                                              ; preds = %77
  %119 = call i32 @fscache_stat(i32* @fscache_n_cookie_data)
  br label %122

120:                                              ; preds = %77
  %121 = call i32 @fscache_stat(i32* @fscache_n_cookie_special)
  br label %122

122:                                              ; preds = %120, %118, %116
  %123 = load %struct.fscache_cookie*, %struct.fscache_cookie** %8, align 8
  %124 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %123, i32 0, i32 1
  %125 = load %struct.fscache_cookie_def*, %struct.fscache_cookie_def** %124, align 8
  %126 = getelementptr inbounds %struct.fscache_cookie_def, %struct.fscache_cookie_def* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 128
  br i1 %128, label %129, label %142

129:                                              ; preds = %122
  %130 = load %struct.fscache_cookie*, %struct.fscache_cookie** %8, align 8
  %131 = call i64 @fscache_acquire_non_index_cookie(%struct.fscache_cookie* %130)
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %129
  %134 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %135 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %134, i32 0, i32 0
  %136 = call i32 @atomic_dec(i32* %135)
  %137 = load %struct.fscache_cookie*, %struct.fscache_cookie** %8, align 8
  %138 = call i32 @__fscache_cookie_put(%struct.fscache_cookie* %137)
  %139 = call i32 @fscache_stat(i32* @fscache_n_acquires_nobufs)
  %140 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store %struct.fscache_cookie* null, %struct.fscache_cookie** %4, align 8
  br label %147

141:                                              ; preds = %129
  br label %142

142:                                              ; preds = %141, %122
  %143 = call i32 @fscache_stat(i32* @fscache_n_acquires_ok)
  %144 = load %struct.fscache_cookie*, %struct.fscache_cookie** %8, align 8
  %145 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), %struct.fscache_cookie* %144)
  %146 = load %struct.fscache_cookie*, %struct.fscache_cookie** %8, align 8
  store %struct.fscache_cookie* %146, %struct.fscache_cookie** %4, align 8
  br label %147

147:                                              ; preds = %142, %133, %74, %34
  %148 = load %struct.fscache_cookie*, %struct.fscache_cookie** %4, align 8
  ret %struct.fscache_cookie* %148
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @_enter(i8*, i8*, i32*, i8*) #1

declare dso_local i32 @fscache_stat(i32*) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local %struct.fscache_cookie* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local i64 @fscache_acquire_non_index_cookie(%struct.fscache_cookie*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @__fscache_cookie_put(%struct.fscache_cookie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
