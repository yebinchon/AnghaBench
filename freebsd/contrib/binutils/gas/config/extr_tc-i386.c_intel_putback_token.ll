; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_intel_putback_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_intel_putback_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32*, i32* }
%struct.TYPE_5__ = type { i32 }

@cur_token = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@T_NIL = common dso_local global i64 0, align 8
@intel_parser = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@prev_token = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @intel_putback_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_putback_token() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cur_token, i32 0, i32 0), align 8
  %2 = load i64, i64* @T_NIL, align 8
  %3 = icmp ne i64 %1, %2
  br i1 %3, label %4, label %13

4:                                                ; preds = %0
  %5 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cur_token, i32 0, i32 1), align 8
  %6 = call i64 @strlen(i32* %5)
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @intel_parser, i32 0, i32 0), align 4
  %8 = sext i32 %7 to i64
  %9 = sub nsw i64 %8, %6
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @intel_parser, i32 0, i32 0), align 4
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cur_token, i32 0, i32 1), align 8
  %12 = call i32 @free(i32* %11)
  br label %13

13:                                               ; preds = %4, %0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_4__* @cur_token to i8*), i8* align 8 bitcast (%struct.TYPE_4__* @prev_token to i8*), i64 24, i1 false)
  %14 = load i64, i64* @T_NIL, align 8
  store i64 %14, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @prev_token, i32 0, i32 0), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @prev_token, i32 0, i32 2), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @prev_token, i32 0, i32 1), align 8
  ret void
}

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @free(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
