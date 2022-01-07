; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_type_assign.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_type_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64, i32* }
%struct.TYPE_7__ = type { i32, i32 }

@DT_NF_SIGNED = common dso_local global i32 0, align 4
@DT_NF_REF = common dso_local global i32 0, align 4
@DT_NF_BITFIELD = common dso_local global i32 0, align 4
@DT_NF_USERLAND = common dso_local global i32 0, align 4
@CTF_K_INTEGER = common dso_local global i64 0, align 8
@NBBY = common dso_local global i32 0, align 4
@CTF_INT_SIGNED = common dso_local global i32 0, align 4
@CTF_K_FLOAT = common dso_local global i64 0, align 8
@CTF_K_STRUCT = common dso_local global i64 0, align 8
@CTF_K_UNION = common dso_local global i64 0, align 8
@CTF_K_FORWARD = common dso_local global i64 0, align 8
@CTF_K_ARRAY = common dso_local global i64 0, align 8
@CTF_K_FUNCTION = common dso_local global i64 0, align 8
@yypcb = common dso_local global %struct.TYPE_8__* null, align 8
@DT_NF_COOKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dt_node_type_assign(%struct.TYPE_6__* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_7__, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i64 @ctf_type_resolve(i32* %13, i64 %14)
  store i64 %15, i64* %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i64 @ctf_type_kind(i32* %16, i64 %17)
  store i64 %18, i64* %10, align 8
  %19 = load i32, i32* @DT_NF_SIGNED, align 4
  %20 = load i32, i32* @DT_NF_REF, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @DT_NF_BITFIELD, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @DT_NF_USERLAND, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @CTF_K_INTEGER, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %78

34:                                               ; preds = %4
  %35 = load i32*, i32** %6, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i64 @ctf_type_encoding(i32* %35, i64 %36, %struct.TYPE_7__* %11)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %78

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @NBBY, align 4
  %43 = sdiv i32 %41, %42
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = icmp ugt i64 %45, 8
  br i1 %46, label %59, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NBBY, align 4
  %51 = srem i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* %12, align 8
  %56 = sub i64 %55, 1
  %57 = and i64 %54, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53, %47, %39
  %60 = load i32, i32* @DT_NF_BITFIELD, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %59, %53
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CTF_INT_SIGNED, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load i32, i32* @DT_NF_SIGNED, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %71, %65
  br label %78

78:                                               ; preds = %77, %34, %4
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* @CTF_K_FLOAT, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %101

82:                                               ; preds = %78
  %83 = load i32*, i32** %6, align 8
  %84 = load i64, i64* %9, align 8
  %85 = call i64 @ctf_type_encoding(i32* %83, i64 %84, %struct.TYPE_7__* %11)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @NBBY, align 4
  %91 = sdiv i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = icmp ugt i64 %92, 4
  br i1 %93, label %94, label %100

94:                                               ; preds = %87
  %95 = load i32, i32* @DT_NF_REF, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %94, %87
  br label %101

101:                                              ; preds = %100, %82, %78
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* @CTF_K_STRUCT, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %121, label %105

105:                                              ; preds = %101
  %106 = load i64, i64* %10, align 8
  %107 = load i64, i64* @CTF_K_UNION, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %121, label %109

109:                                              ; preds = %105
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* @CTF_K_FORWARD, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %121, label %113

113:                                              ; preds = %109
  %114 = load i64, i64* %10, align 8
  %115 = load i64, i64* @CTF_K_ARRAY, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %121, label %117

117:                                              ; preds = %113
  %118 = load i64, i64* %10, align 8
  %119 = load i64, i64* @CTF_K_FUNCTION, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %117, %113, %109, %105, %101
  %122 = load i32, i32* @DT_NF_REF, align 4
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %151

127:                                              ; preds = %117
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** @yypcb, align 8
  %129 = icmp ne %struct.TYPE_8__* %128, null
  br i1 %129, label %130, label %150

130:                                              ; preds = %127
  %131 = load i32*, i32** %6, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** @yypcb, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32* @DT_DYN_CTFP(i32 %134)
  %136 = icmp eq i32* %131, %135
  br i1 %136, label %137, label %150

137:                                              ; preds = %130
  %138 = load i64, i64* %7, align 8
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** @yypcb, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @DT_DYN_TYPE(i32 %141)
  %143 = icmp eq i64 %138, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %137
  %145 = load i32, i32* @DT_NF_REF, align 4
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 8
  br label %150

150:                                              ; preds = %144, %137, %130, %127
  br label %151

151:                                              ; preds = %150, %121
  %152 = load i64, i64* %8, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  %155 = load i32, i32* @DT_NF_USERLAND, align 4
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 8
  br label %160

160:                                              ; preds = %154, %151
  %161 = load i32, i32* @DT_NF_COOKED, align 4
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  %166 = load i32*, i32** %6, align 8
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 2
  store i32* %166, i32** %168, align 8
  %169 = load i64, i64* %7, align 8
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 1
  store i64 %169, i64* %171, align 8
  ret void
}

declare dso_local i64 @ctf_type_resolve(i32*, i64) #1

declare dso_local i64 @ctf_type_kind(i32*, i64) #1

declare dso_local i64 @ctf_type_encoding(i32*, i64, %struct.TYPE_7__*) #1

declare dso_local i32* @DT_DYN_CTFP(i32) #1

declare dso_local i64 @DT_DYN_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
