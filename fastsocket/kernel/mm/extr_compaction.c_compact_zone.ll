; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_compaction.c_compact_zone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_compaction.c_compact_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { i64, i64, i64, i64 }
%struct.compact_control = type { i64, i64, i64, i64, i64, i32, i32, i64, i32 }

@pageblock_nr_pages = common dso_local global i32 0, align 4
@MIGRATE_SYNC = common dso_local global i64 0, align 8
@compaction_alloc = common dso_local global i32 0, align 4
@MIGRATE_SYNC_LIGHT = common dso_local global i32 0, align 4
@MIGRATE_ASYNC = common dso_local global i32 0, align 4
@COMPACTBLOCKS = common dso_local global i32 0, align 4
@COMPACTPAGES = common dso_local global i32 0, align 4
@COMPACTPAGEFAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zone*, %struct.compact_control*)* @compact_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compact_zone(%struct.zone* %0, %struct.compact_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zone*, align 8
  %5 = alloca %struct.compact_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.zone* %0, %struct.zone** %4, align 8
  store %struct.compact_control* %1, %struct.compact_control** %5, align 8
  %11 = load %struct.zone*, %struct.zone** %4, align 8
  %12 = getelementptr inbounds %struct.zone, %struct.zone* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = load %struct.zone*, %struct.zone** %4, align 8
  %15 = getelementptr inbounds %struct.zone, %struct.zone* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.zone*, %struct.zone** %4, align 8
  %18 = getelementptr inbounds %struct.zone, %struct.zone* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %16, %19
  store i64 %20, i64* %8, align 8
  %21 = load %struct.zone*, %struct.zone** %4, align 8
  %22 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %23 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @compaction_suitable(%struct.zone* %21, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %30 [
    i32 129, label %27
    i32 128, label %27
    i32 130, label %29
  ]

27:                                               ; preds = %2, %2
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %195

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %29, %2
  %31 = load %struct.zone*, %struct.zone** %4, align 8
  %32 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %33 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @compaction_restarting(%struct.zone* %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = call i32 (...) @current_is_kswapd()
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load %struct.zone*, %struct.zone** %4, align 8
  %42 = call i32 @__reset_isolation_suitable(%struct.zone* %41)
  br label %43

43:                                               ; preds = %40, %37, %30
  %44 = load %struct.zone*, %struct.zone** %4, align 8
  %45 = getelementptr inbounds %struct.zone, %struct.zone* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %48 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.zone*, %struct.zone** %4, align 8
  %50 = getelementptr inbounds %struct.zone, %struct.zone* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %53 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %55 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %43
  %60 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %61 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %59, %43
  %66 = load i64, i64* %8, align 8
  %67 = load i32, i32* @pageblock_nr_pages, align 4
  %68 = sub nsw i32 %67, 1
  %69 = xor i32 %68, -1
  %70 = sext i32 %69 to i64
  %71 = and i64 %66, %70
  %72 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %73 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %75 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.zone*, %struct.zone** %4, align 8
  %78 = getelementptr inbounds %struct.zone, %struct.zone* %77, i32 0, i32 3
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %65, %59
  %80 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %81 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %7, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %91, label %85

85:                                               ; preds = %79
  %86 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %87 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %8, align 8
  %90 = icmp ugt i64 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %85, %79
  %92 = load i64, i64* %7, align 8
  %93 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %94 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %96 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.zone*, %struct.zone** %4, align 8
  %99 = getelementptr inbounds %struct.zone, %struct.zone* %98, i32 0, i32 2
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %91, %85
  %101 = call i32 (...) @migrate_prep_local()
  br label %102

102:                                              ; preds = %179, %129, %100
  %103 = load %struct.zone*, %struct.zone** %4, align 8
  %104 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %105 = call i32 @compact_finished(%struct.zone* %103, %struct.compact_control* %104)
  store i32 %105, i32* %6, align 4
  %106 = icmp eq i32 %105, 130
  br i1 %106, label %107, label %180

107:                                              ; preds = %102
  %108 = load %struct.zone*, %struct.zone** %4, align 8
  %109 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %110 = call i32 @isolate_migratepages(%struct.zone* %108, %struct.compact_control* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %130, label %112

112:                                              ; preds = %107
  %113 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %114 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %113, i32 0, i32 7
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %112
  %118 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %119 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @MIGRATE_SYNC, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %117
  %124 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %125 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %124, i32 0, i32 6
  %126 = call i32 @putback_lru_pages(i32* %125)
  %127 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %128 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %127, i32 0, i32 3
  store i64 0, i64* %128, align 8
  store i32 129, i32* %6, align 4
  br label %180

129:                                              ; preds = %117, %112
  br label %102

130:                                              ; preds = %107
  %131 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %132 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %9, align 8
  %134 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %135 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %134, i32 0, i32 6
  %136 = load i32, i32* @compaction_alloc, align 4
  %137 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %138 = ptrtoint %struct.compact_control* %137 to i64
  %139 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %140 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %130
  %144 = load i32, i32* @MIGRATE_SYNC_LIGHT, align 4
  br label %147

145:                                              ; preds = %130
  %146 = load i32, i32* @MIGRATE_ASYNC, align 4
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i32 [ %144, %143 ], [ %146, %145 ]
  %149 = call i32 @migrate_pages(i32* %135, i32 %136, i64 %138, i32 0, i32 %148)
  %150 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %151 = call i32 @update_nr_listpages(%struct.compact_control* %150)
  %152 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %153 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %10, align 8
  %155 = load i32, i32* @COMPACTBLOCKS, align 4
  %156 = call i32 @count_vm_event(i32 %155)
  %157 = load i32, i32* @COMPACTPAGES, align 4
  %158 = load i64, i64* %9, align 8
  %159 = load i64, i64* %10, align 8
  %160 = sub i64 %158, %159
  %161 = call i32 @count_vm_events(i32 %157, i64 %160)
  %162 = load i64, i64* %10, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %147
  %165 = load i32, i32* @COMPACTPAGEFAILED, align 4
  %166 = load i64, i64* %10, align 8
  %167 = call i32 @count_vm_events(i32 %165, i64 %166)
  br label %168

168:                                              ; preds = %164, %147
  %169 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %170 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %169, i32 0, i32 6
  %171 = call i32 @list_empty(i32* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %179, label %173

173:                                              ; preds = %168
  %174 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %175 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %174, i32 0, i32 6
  %176 = call i32 @putback_lru_pages(i32* %175)
  %177 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %178 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %177, i32 0, i32 3
  store i64 0, i64* %178, align 8
  br label %179

179:                                              ; preds = %173, %168
  br label %102

180:                                              ; preds = %123, %102
  %181 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %182 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %181, i32 0, i32 5
  %183 = call i64 @release_freepages(i32* %182)
  %184 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %185 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %184, i32 0, i32 4
  %186 = load i64, i64* %185, align 8
  %187 = sub nsw i64 %186, %183
  store i64 %187, i64* %185, align 8
  %188 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %189 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %188, i32 0, i32 4
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  %192 = zext i1 %191 to i32
  %193 = call i32 @VM_BUG_ON(i32 %192)
  %194 = load i32, i32* %6, align 4
  store i32 %194, i32* %3, align 4
  br label %195

195:                                              ; preds = %180, %27
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local i32 @compaction_suitable(%struct.zone*, i32) #1

declare dso_local i64 @compaction_restarting(%struct.zone*, i32) #1

declare dso_local i32 @current_is_kswapd(...) #1

declare dso_local i32 @__reset_isolation_suitable(%struct.zone*) #1

declare dso_local i32 @migrate_prep_local(...) #1

declare dso_local i32 @compact_finished(%struct.zone*, %struct.compact_control*) #1

declare dso_local i32 @isolate_migratepages(%struct.zone*, %struct.compact_control*) #1

declare dso_local i32 @putback_lru_pages(i32*) #1

declare dso_local i32 @migrate_pages(i32*, i32, i64, i32, i32) #1

declare dso_local i32 @update_nr_listpages(%struct.compact_control*) #1

declare dso_local i32 @count_vm_event(i32) #1

declare dso_local i32 @count_vm_events(i32, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @release_freepages(i32*) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
