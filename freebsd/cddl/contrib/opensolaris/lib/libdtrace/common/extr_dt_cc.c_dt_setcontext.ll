; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_setcontext.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_setcontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, %struct.TYPE_39__*, %struct.TYPE_35__*, %struct.TYPE_31__, i32 }
%struct.TYPE_39__ = type { %struct.TYPE_34__* }
%struct.TYPE_34__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_35__ = type { i32, i32, i32, i32, i32* }
%struct.TYPE_31__ = type { i32, i32, i32 }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_38__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_28__ = type { i32 }

@DTRACE_PRIV_PROC = common dso_local global i32 0, align 4
@yypcb = common dso_local global %struct.TYPE_29__* null, align 8
@EDT_COMPILER = common dso_local global i32 0, align 4
@_dtrace_prvdesc = common dso_local global %struct.TYPE_36__ zeroinitializer, align 4
@EDT_NOPROBE = common dso_local global i32 0, align 4
@DTRACE_C_ZDEFS = common dso_local global i32 0, align 4
@D_PDESC_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"probe description %s:%s:%s:%s does not match any probes\0A\00", align 1
@EDT_UNSTABLE = common dso_local global i32 0, align 4
@D_PDESC_INVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"set context to %s:%s:%s:%s [%u] prp=%p attr=%s argc=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"probeprov\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"probemod\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"probefunc\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"probename\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"args\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dt_setcontext(%struct.TYPE_37__* %0, %struct.TYPE_35__* %1) #0 {
  %3 = alloca %struct.TYPE_37__*, align 8
  %4 = alloca %struct.TYPE_35__*, align 8
  %5 = alloca %struct.TYPE_36__*, align 8
  %6 = alloca %struct.TYPE_39__*, align 8
  %7 = alloca %struct.TYPE_38__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca [8 x i8], align 1
  %10 = alloca i32, align 4
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %3, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %4, align 8
  %11 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @strlen(i32* %16)
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %13, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @isdigit(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %2
  %25 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %26 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = call %struct.TYPE_38__* @dt_provider_lookup(%struct.TYPE_37__* %25, i32* %28)
  store %struct.TYPE_38__* %29, %struct.TYPE_38__** %7, align 8
  %30 = icmp eq %struct.TYPE_38__* %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %24
  %32 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @DTRACE_PRIV_PROC, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %31, %24
  %41 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %42 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %43 = load %struct.TYPE_29__*, %struct.TYPE_29__** @yypcb, align 8
  %44 = call i64 @dt_pid_create_probes(%struct.TYPE_35__* %41, %struct.TYPE_37__* %42, %struct.TYPE_29__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.TYPE_29__*, %struct.TYPE_29__** @yypcb, align 8
  %48 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @EDT_COMPILER, align 4
  %51 = call i32 @longjmp(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %46, %40, %31, %2
  %53 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %54 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %55 = load %struct.TYPE_29__*, %struct.TYPE_29__** @yypcb, align 8
  %56 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %55, i32 0, i32 3
  %57 = call %struct.TYPE_39__* @dt_probe_info(%struct.TYPE_37__* %53, %struct.TYPE_35__* %54, %struct.TYPE_31__* %56)
  store %struct.TYPE_39__* %57, %struct.TYPE_39__** %6, align 8
  %58 = icmp eq %struct.TYPE_39__* %57, null
  br i1 %58, label %59, label %77

59:                                               ; preds = %52
  store %struct.TYPE_36__* @_dtrace_prvdesc, %struct.TYPE_36__** %5, align 8
  %60 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %61 = call i32 @dtrace_errno(%struct.TYPE_37__* %60)
  store i32 %61, i32* %10, align 4
  %62 = load %struct.TYPE_29__*, %struct.TYPE_29__** @yypcb, align 8
  %63 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %62, i32 0, i32 3
  %64 = call i32 @bzero(%struct.TYPE_31__* %63, i32 4)
  %65 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_29__*, %struct.TYPE_29__** @yypcb, align 8
  %69 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 4
  %71 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_29__*, %struct.TYPE_29__** @yypcb, align 8
  %75 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %75, i32 0, i32 2
  store i32 %73, i32* %76, align 8
  br label %83

77:                                               ; preds = %52
  %78 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_34__*, %struct.TYPE_34__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %81, i32 0, i32 0
  store %struct.TYPE_36__* %82, %struct.TYPE_36__** %5, align 8
  store i32 0, i32* %10, align 4
  br label %83

83:                                               ; preds = %77, %59
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @EDT_NOPROBE, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %110

87:                                               ; preds = %83
  %88 = load %struct.TYPE_29__*, %struct.TYPE_29__** @yypcb, align 8
  %89 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @DTRACE_C_ZDEFS, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %110, label %94

94:                                               ; preds = %87
  %95 = load i32, i32* @D_PDESC_ZERO, align 4
  %96 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = ptrtoint i32* %98 to i32
  %100 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i32, i8*, i32, ...) @xyerror(i32 %95, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %99, i32 %102, i32 %105, i32 %108)
  br label %110

110:                                              ; preds = %94, %87, %83
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @EDT_NOPROBE, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %110
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* @EDT_UNSTABLE, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %114
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load i32, i32* @D_PDESC_INVAL, align 4
  %123 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @dtrace_errmsg(%struct.TYPE_37__* %123, i32 %124)
  %126 = call i32 (i32, i8*, i32, ...) @xyerror(i32 %122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %121, %118, %114, %110
  %128 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %128, i32 0, i32 4
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %144 = bitcast %struct.TYPE_39__* %143 to i8*
  %145 = load %struct.TYPE_29__*, %struct.TYPE_29__** @yypcb, align 8
  %146 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %150 = call i32 @dt_attr_str(i32 %148, i8* %149, i32 8)
  %151 = load %struct.TYPE_29__*, %struct.TYPE_29__** @yypcb, align 8
  %152 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @dt_dprintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32* %130, i32 %133, i32 %136, i32 %139, i32 %142, i8* %144, i32 %150, i32 %154)
  %156 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call %struct.TYPE_28__* @dt_idhash_lookup(i32 %158, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_28__* %159, %struct.TYPE_28__** %8, align 8
  %160 = icmp ne %struct.TYPE_28__* %159, null
  br i1 %160, label %161, label %167

161:                                              ; preds = %127
  %162 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 4
  br label %167

167:                                              ; preds = %161, %127
  %168 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call %struct.TYPE_28__* @dt_idhash_lookup(i32 %170, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_28__* %171, %struct.TYPE_28__** %8, align 8
  %172 = icmp ne %struct.TYPE_28__* %171, null
  br i1 %172, label %173, label %179

173:                                              ; preds = %167
  %174 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 4
  br label %179

179:                                              ; preds = %173, %167
  %180 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call %struct.TYPE_28__* @dt_idhash_lookup(i32 %182, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store %struct.TYPE_28__* %183, %struct.TYPE_28__** %8, align 8
  %184 = icmp ne %struct.TYPE_28__* %183, null
  br i1 %184, label %185, label %191

185:                                              ; preds = %179
  %186 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 4
  br label %191

191:                                              ; preds = %185, %179
  %192 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call %struct.TYPE_28__* @dt_idhash_lookup(i32 %194, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store %struct.TYPE_28__* %195, %struct.TYPE_28__** %8, align 8
  %196 = icmp ne %struct.TYPE_28__* %195, null
  br i1 %196, label %197, label %203

197:                                              ; preds = %191
  %198 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 4
  br label %203

203:                                              ; preds = %197, %191
  %204 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call %struct.TYPE_28__* @dt_idhash_lookup(i32 %206, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  store %struct.TYPE_28__* %207, %struct.TYPE_28__** %8, align 8
  %208 = icmp ne %struct.TYPE_28__* %207, null
  br i1 %208, label %209, label %215

209:                                              ; preds = %203
  %210 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %213, i32 0, i32 0
  store i32 %212, i32* %214, align 4
  br label %215

215:                                              ; preds = %209, %203
  %216 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %217 = load %struct.TYPE_29__*, %struct.TYPE_29__** @yypcb, align 8
  %218 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %217, i32 0, i32 2
  store %struct.TYPE_35__* %216, %struct.TYPE_35__** %218, align 8
  %219 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %220 = load %struct.TYPE_29__*, %struct.TYPE_29__** @yypcb, align 8
  %221 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %220, i32 0, i32 1
  store %struct.TYPE_39__* %219, %struct.TYPE_39__** %221, align 8
  ret void
}

declare dso_local i64 @isdigit(i32) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local %struct.TYPE_38__* @dt_provider_lookup(%struct.TYPE_37__*, i32*) #1

declare dso_local i64 @dt_pid_create_probes(%struct.TYPE_35__*, %struct.TYPE_37__*, %struct.TYPE_29__*) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local %struct.TYPE_39__* @dt_probe_info(%struct.TYPE_37__*, %struct.TYPE_35__*, %struct.TYPE_31__*) #1

declare dso_local i32 @dtrace_errno(%struct.TYPE_37__*) #1

declare dso_local i32 @bzero(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @xyerror(i32, i8*, i32, ...) #1

declare dso_local i32 @dtrace_errmsg(%struct.TYPE_37__*, i32) #1

declare dso_local i32 @dt_dprintf(i8*, i32*, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @dt_attr_str(i32, i8*, i32) #1

declare dso_local %struct.TYPE_28__* @dt_idhash_lookup(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
