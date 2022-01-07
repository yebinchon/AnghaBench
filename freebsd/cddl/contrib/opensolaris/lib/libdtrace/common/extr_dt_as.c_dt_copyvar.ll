; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_as.c_dt_copyvar.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_as.c_dt_copyvar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i64 }

@DT_IDFLG_DIFR = common dso_local global i32 0, align 4
@DT_IDFLG_DIFW = common dso_local global i32 0, align 4
@EDT_NOMEM = common dso_local global i32 0, align 4
@DIF_STROFF_MAX = common dso_local global i64 0, align 8
@EDT_STR2BIG = common dso_local global i32 0, align 4
@DT_IDENT_ARRAY = common dso_local global i64 0, align 8
@DIFV_KIND_ARRAY = common dso_local global i32 0, align 4
@DIFV_KIND_SCALAR = common dso_local global i32 0, align 4
@DT_IDFLG_LOCAL = common dso_local global i32 0, align 4
@DIFV_SCOPE_LOCAL = common dso_local global i32 0, align 4
@DT_IDFLG_TLS = common dso_local global i32 0, align 4
@DIFV_SCOPE_THREAD = common dso_local global i32 0, align 4
@DIFV_SCOPE_GLOBAL = common dso_local global i32 0, align 4
@DIFV_F_REF = common dso_local global i32 0, align 4
@DIFV_F_MOD = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, i8*)* @dt_copyvar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_copyvar(i32* %0, %struct.TYPE_9__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %8, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @DT_IDFLG_DIFR, align 4
  %18 = load i32, i32* @DT_IDFLG_DIFW, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %160

23:                                               ; preds = %3
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 %33
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %9, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @dt_strtab_insert(i32 %37, i32 %40)
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = icmp eq i64 %42, -1
  br i1 %43, label %44, label %50

44:                                               ; preds = %23
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @EDT_NOMEM, align 4
  %49 = call i32 @longjmp(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %44, %23
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* @DIF_STROFF_MAX, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @EDT_STR2BIG, align 4
  %59 = call i32 @longjmp(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %54, %50
  %61 = load i64, i64* %10, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 5
  store i64 %61, i64* %63, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  store i32 0, i32* %70, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @DT_IDENT_ARRAY, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %60
  %77 = load i32, i32* @DIFV_KIND_ARRAY, align 4
  br label %80

78:                                               ; preds = %60
  %79 = load i32, i32* @DIFV_KIND_SCALAR, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @DT_IDFLG_LOCAL, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %80
  %91 = load i32, i32* @DIFV_SCOPE_LOCAL, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  br label %110

94:                                               ; preds = %80
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @DT_IDFLG_TLS, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load i32, i32* @DIFV_SCOPE_THREAD, align 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  br label %109

105:                                              ; preds = %94
  %106 = load i32, i32* @DIFV_SCOPE_GLOBAL, align 4
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %105, %101
  br label %110

110:                                              ; preds = %109, %90
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @DT_IDFLG_DIFR, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %110
  %118 = load i32, i32* @DIFV_F_REF, align 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %117, %110
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @DT_IDFLG_DIFW, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %123
  %131 = load i32, i32* @DIFV_F_MOD, align 4
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %130, %123
  %137 = call i32 @bzero(i32* %11, i32 4)
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @B_FALSE, align 4
  %145 = call i32 @dt_node_type_assign(i32* %11, i32 %140, i32 %143, i32 %144)
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = call i32 @dt_node_diftype(i32 %148, i32* %11, i32* %150)
  %152 = load i32, i32* @DT_IDFLG_DIFR, align 4
  %153 = load i32, i32* @DT_IDFLG_DIFW, align 4
  %154 = or i32 %152, %153
  %155 = xor i32 %154, -1
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = and i32 %158, %155
  store i32 %159, i32* %157, align 8
  store i32 0, i32* %4, align 4
  br label %160

160:                                              ; preds = %136, %22
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local i64 @dt_strtab_insert(i32, i32) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @dt_node_type_assign(i32*, i32, i32, i32) #1

declare dso_local i32 @dt_node_diftype(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
