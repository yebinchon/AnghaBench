; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_filestream.c__xfs_filestream_update_ag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_filestream.c__xfs_filestream_update_ag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_19__*, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_20__*, %struct.TYPE_20__* }

@S_IFREG = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@item_zone = common dso_local global i32 0, align 4
@KM_MAYFAIL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_20__*, i64)* @_xfs_filestream_update_ag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_xfs_filestream_update_ag(%struct.TYPE_20__* %0, %struct.TYPE_20__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %15 = icmp ne %struct.TYPE_20__* %14, null
  br i1 %15, label %16, label %51

16:                                               ; preds = %3
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @S_IFREG, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %16
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %26 = icmp ne %struct.TYPE_20__* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @S_IFDIR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %27, %24, %16
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @S_IFDIR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %45 = icmp ne %struct.TYPE_20__* %44, null
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %43, %35
  %48 = phi i1 [ false, %35 ], [ %46, %43 ]
  br label %49

49:                                               ; preds = %47, %27
  %50 = phi i1 [ true, %27 ], [ %48, %47 ]
  br label %51

51:                                               ; preds = %49, %3
  %52 = phi i1 [ false, %3 ], [ %50, %49 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @ASSERT(i32 %53)
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %56, align 8
  store %struct.TYPE_19__* %57, %struct.TYPE_19__** %9, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %10, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call %struct.TYPE_21__* @xfs_mru_cache_lookup(i32* %61, i32 %64)
  store %struct.TYPE_21__* %65, %struct.TYPE_21__** %11, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %67 = icmp ne %struct.TYPE_21__* %66, null
  br i1 %67, label %68, label %124

68:                                               ; preds = %51
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %70, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %73 = icmp eq %struct.TYPE_20__* %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @ASSERT(i32 %74)
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %12, align 8
  %79 = load i64, i64* %7, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %83, align 8
  store %struct.TYPE_20__* %84, %struct.TYPE_20__** %13, align 8
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 1
  store %struct.TYPE_20__* %85, %struct.TYPE_20__** %87, align 8
  %88 = load i32*, i32** %10, align 8
  %89 = call i32 @xfs_mru_cache_done(i32* %88)
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* %12, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %68
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %95 = load i64, i64* %12, align 8
  %96 = call i32 @xfs_filestream_put_ag(%struct.TYPE_19__* %94, i64 %95)
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %98 = load i64, i64* %7, align 8
  %99 = call i32 @xfs_filestream_get_ag(%struct.TYPE_19__* %97, i64 %98)
  br label %100

100:                                              ; preds = %93, %68
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %102 = icmp ne %struct.TYPE_20__* %101, null
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %106 = icmp ne %struct.TYPE_20__* %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %109 = call i32 @IRELE(%struct.TYPE_20__* %108)
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %111 = call i32 @IHOLD(%struct.TYPE_20__* %110)
  br label %112

112:                                              ; preds = %107, %103, %100
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %115 = load i64, i64* %12, align 8
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %117 = load i64, i64* %12, align 8
  %118 = call i32 @xfs_filestream_peek_ag(%struct.TYPE_19__* %116, i64 %117)
  %119 = load i64, i64* %7, align 8
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %121 = load i64, i64* %7, align 8
  %122 = call i32 @xfs_filestream_peek_ag(%struct.TYPE_19__* %120, i64 %121)
  %123 = call i32 @TRACE_UPDATE(%struct.TYPE_19__* %113, %struct.TYPE_20__* %114, i64 %115, i32 %118, i64 %119, i32 %122)
  store i32 0, i32* %4, align 4
  br label %178

124:                                              ; preds = %51
  %125 = load i32, i32* @item_zone, align 4
  %126 = load i32, i32* @KM_MAYFAIL, align 4
  %127 = call %struct.TYPE_21__* @kmem_zone_zalloc(i32 %125, i32 %126)
  store %struct.TYPE_21__* %127, %struct.TYPE_21__** %11, align 8
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %129 = icmp ne %struct.TYPE_21__* %128, null
  br i1 %129, label %132, label %130

130:                                              ; preds = %124
  %131 = load i32, i32* @ENOMEM, align 4
  store i32 %131, i32* %4, align 4
  br label %178

132:                                              ; preds = %124
  %133 = load i64, i64* %7, align 8
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 2
  store %struct.TYPE_20__* %136, %struct.TYPE_20__** %138, align 8
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 1
  store %struct.TYPE_20__* %139, %struct.TYPE_20__** %141, align 8
  %142 = load i32*, i32** %10, align 8
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %147 = call i32 @xfs_mru_cache_insert(i32* %142, i32 %145, %struct.TYPE_21__* %146)
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %132
  %151 = load i32, i32* @item_zone, align 4
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %153 = call i32 @kmem_zone_free(i32 %151, %struct.TYPE_21__* %152)
  %154 = load i32, i32* %8, align 4
  store i32 %154, i32* %4, align 4
  br label %178

155:                                              ; preds = %132
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %157 = load i64, i64* %7, align 8
  %158 = call i32 @xfs_filestream_get_ag(%struct.TYPE_19__* %156, i64 %157)
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %160 = call i32 @IHOLD(%struct.TYPE_20__* %159)
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %162 = icmp ne %struct.TYPE_20__* %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %155
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %165 = call i32 @IHOLD(%struct.TYPE_20__* %164)
  br label %166

166:                                              ; preds = %163, %155
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %169 = load i64, i64* %7, align 8
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %171 = load i64, i64* %7, align 8
  %172 = call i32 @xfs_filestream_peek_ag(%struct.TYPE_19__* %170, i64 %171)
  %173 = load i64, i64* %7, align 8
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %175 = load i64, i64* %7, align 8
  %176 = call i32 @xfs_filestream_peek_ag(%struct.TYPE_19__* %174, i64 %175)
  %177 = call i32 @TRACE_UPDATE(%struct.TYPE_19__* %167, %struct.TYPE_20__* %168, i64 %169, i32 %172, i64 %173, i32 %176)
  store i32 0, i32* %4, align 4
  br label %178

178:                                              ; preds = %166, %150, %130, %112
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_21__* @xfs_mru_cache_lookup(i32*, i32) #1

declare dso_local i32 @xfs_mru_cache_done(i32*) #1

declare dso_local i32 @xfs_filestream_put_ag(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @xfs_filestream_get_ag(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @IRELE(%struct.TYPE_20__*) #1

declare dso_local i32 @IHOLD(%struct.TYPE_20__*) #1

declare dso_local i32 @TRACE_UPDATE(%struct.TYPE_19__*, %struct.TYPE_20__*, i64, i32, i64, i32) #1

declare dso_local i32 @xfs_filestream_peek_ag(%struct.TYPE_19__*, i64) #1

declare dso_local %struct.TYPE_21__* @kmem_zone_zalloc(i32, i32) #1

declare dso_local i32 @xfs_mru_cache_insert(i32*, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @kmem_zone_free(i32, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
