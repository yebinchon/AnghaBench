; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmp.c_snmp_value_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmp.c_snmp_value_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_value = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }

@SNMP_SYNTAX_OCTETSTRING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_value_copy(%struct.snmp_value* %0, %struct.snmp_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snmp_value*, align 8
  %5 = alloca %struct.snmp_value*, align 8
  store %struct.snmp_value* %0, %struct.snmp_value** %4, align 8
  store %struct.snmp_value* %1, %struct.snmp_value** %5, align 8
  %6 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %7 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %10 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 8
  %11 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %12 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %15 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %17 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SNMP_SYNTAX_OCTETSTRING, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %73

21:                                               ; preds = %2
  %22 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %23 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %28 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 8
  %31 = icmp eq i32 %26, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %34 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  br label %72

37:                                               ; preds = %21
  %38 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %39 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32* @malloc(i32 %42)
  %44 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %45 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i32* %43, i32** %47, align 8
  %48 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %49 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %37
  store i32 -1, i32* %3, align 4
  br label %81

55:                                               ; preds = %37
  %56 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %57 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %62 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %67 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @memcpy(i32* %60, i32* %65, i32 %70)
  br label %72

72:                                               ; preds = %55, %32
  br label %80

73:                                               ; preds = %2
  %74 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %75 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %74, i32 0, i32 1
  %76 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %77 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %76, i32 0, i32 1
  %78 = bitcast %struct.TYPE_4__* %75 to i8*
  %79 = bitcast %struct.TYPE_4__* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 16, i1 false)
  br label %80

80:                                               ; preds = %73, %72
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %54
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
