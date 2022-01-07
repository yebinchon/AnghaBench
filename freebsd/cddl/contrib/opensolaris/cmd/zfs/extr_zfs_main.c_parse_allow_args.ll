; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_parse_allow_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_parse_allow_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.allow_opts = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i8*, i64 }

@B_FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"-u, -g, and -e are mutually exclusive\0A\00", align 1
@B_TRUE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"invalid options combined with -s\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"invalid set name: missing '@' prefix\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"invalid options combined with -c\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"invalid options combined with -e\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"everyone\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**, i64, %struct.allow_opts*)* @parse_allow_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_allow_args(i32 %0, i8** %1, i64 %2, %struct.allow_opts* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.allow_opts*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.allow_opts* %3, %struct.allow_opts** %8, align 8
  %13 = load %struct.allow_opts*, %struct.allow_opts** %8, align 8
  %14 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.allow_opts*, %struct.allow_opts** %8, align 8
  %17 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %15, %18
  %20 = load %struct.allow_opts*, %struct.allow_opts** %8, align 8
  %21 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %19, %22
  store i32 %23, i32* %9, align 4
  %24 = load %struct.allow_opts*, %struct.allow_opts** %8, align 8
  %25 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.allow_opts*, %struct.allow_opts** %8, align 8
  %28 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %26, %29
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.allow_opts*, %struct.allow_opts** %8, align 8
  %35 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %33, %36
  %38 = load %struct.allow_opts*, %struct.allow_opts** %8, align 8
  %39 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %37, %40
  store i32 %41, i32* %11, align 4
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %4
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.allow_opts*, %struct.allow_opts** %8, align 8
  %47 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %45, %48
  br label %52

50:                                               ; preds = %4
  %51 = load i32, i32* %11, align 4
  br label %52

52:                                               ; preds = %50, %44
  %53 = phi i32 [ %49, %44 ], [ %51, %50 ]
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i64, i64* %7, align 8
  %58 = load i8*, i8** @B_FALSE, align 8
  %59 = call i32* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %60 = call i32 @allow_usage(i64 %57, i8* %58, i32* %59)
  br label %61

61:                                               ; preds = %56, %52
  %62 = load %struct.allow_opts*, %struct.allow_opts** %8, align 8
  %63 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %62, i32 0, i32 12
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %61
  %67 = load i32, i32* %5, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i32, i32* %12, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i64, i64* %7, align 8
  %74 = load i8*, i8** @B_TRUE, align 8
  %75 = call i32 @allow_usage(i64 %73, i8* %74, i32* null)
  br label %79

76:                                               ; preds = %69, %66
  %77 = load i8*, i8** @B_FALSE, align 8
  %78 = call i32 @usage(i8* %77)
  br label %79

79:                                               ; preds = %76, %72
  br label %80

80:                                               ; preds = %79, %61
  %81 = load %struct.allow_opts*, %struct.allow_opts** %8, align 8
  %82 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %120

85:                                               ; preds = %80
  %86 = load i32, i32* %10, align 4
  %87 = icmp sgt i32 %86, 1
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i64, i64* %7, align 8
  %90 = load i8*, i8** @B_FALSE, align 8
  %91 = call i32* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %92 = call i32 @allow_usage(i64 %89, i8* %90, i32* %91)
  br label %93

93:                                               ; preds = %88, %85
  %94 = load i32, i32* %5, align 4
  %95 = load i8**, i8*** %6, align 8
  %96 = load i64, i64* %7, align 8
  %97 = load %struct.allow_opts*, %struct.allow_opts** %8, align 8
  %98 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %97, i32 0, i32 10
  %99 = call i8* @munge_args(i32 %94, i8** %95, i64 %96, i32 3, i32* %98)
  %100 = load %struct.allow_opts*, %struct.allow_opts** %8, align 8
  %101 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %100, i32 0, i32 8
  store i8* %99, i8** %101, align 8
  %102 = load i8**, i8*** %6, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 0
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 64
  br i1 %108, label %109, label %114

109:                                              ; preds = %93
  %110 = load i64, i64* %7, align 8
  %111 = load i8*, i8** @B_FALSE, align 8
  %112 = call i32* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %113 = call i32 @allow_usage(i64 %110, i8* %111, i32* %112)
  br label %114

114:                                              ; preds = %109, %93
  %115 = load i8**, i8*** %6, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 0
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.allow_opts*, %struct.allow_opts** %8, align 8
  %119 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %118, i32 0, i32 9
  store i8* %117, i8** %119, align 8
  br label %229

120:                                              ; preds = %80
  %121 = load %struct.allow_opts*, %struct.allow_opts** %8, align 8
  %122 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %142

125:                                              ; preds = %120
  %126 = load i32, i32* %11, align 4
  %127 = icmp sgt i32 %126, 1
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load i64, i64* %7, align 8
  %130 = load i8*, i8** @B_FALSE, align 8
  %131 = call i32* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %132 = call i32 @allow_usage(i64 %129, i8* %130, i32* %131)
  br label %133

133:                                              ; preds = %128, %125
  %134 = load i32, i32* %5, align 4
  %135 = load i8**, i8*** %6, align 8
  %136 = load i64, i64* %7, align 8
  %137 = load %struct.allow_opts*, %struct.allow_opts** %8, align 8
  %138 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %137, i32 0, i32 10
  %139 = call i8* @munge_args(i32 %134, i8** %135, i64 %136, i32 2, i32* %138)
  %140 = load %struct.allow_opts*, %struct.allow_opts** %8, align 8
  %141 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %140, i32 0, i32 8
  store i8* %139, i8** %141, align 8
  br label %228

142:                                              ; preds = %120
  %143 = load %struct.allow_opts*, %struct.allow_opts** %8, align 8
  %144 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %164

147:                                              ; preds = %142
  %148 = load i32, i32* %10, align 4
  %149 = icmp sgt i32 %148, 1
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load i64, i64* %7, align 8
  %152 = load i8*, i8** @B_FALSE, align 8
  %153 = call i32* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %154 = call i32 @allow_usage(i64 %151, i8* %152, i32* %153)
  br label %155

155:                                              ; preds = %150, %147
  %156 = load i32, i32* %5, align 4
  %157 = load i8**, i8*** %6, align 8
  %158 = load i64, i64* %7, align 8
  %159 = load %struct.allow_opts*, %struct.allow_opts** %8, align 8
  %160 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %159, i32 0, i32 10
  %161 = call i8* @munge_args(i32 %156, i8** %157, i64 %158, i32 2, i32* %160)
  %162 = load %struct.allow_opts*, %struct.allow_opts** %8, align 8
  %163 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %162, i32 0, i32 8
  store i8* %161, i8** %163, align 8
  br label %227

164:                                              ; preds = %142
  %165 = load i32, i32* %9, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %193

167:                                              ; preds = %164
  %168 = load i32, i32* %5, align 4
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %193

170:                                              ; preds = %167
  %171 = load i8**, i8*** %6, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i64 0
  %173 = load i8*, i8** %172, align 8
  %174 = call i64 @strcmp(i8* %173, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %193

176:                                              ; preds = %170
  %177 = load i8*, i8** @B_TRUE, align 8
  %178 = ptrtoint i8* %177 to i32
  %179 = load %struct.allow_opts*, %struct.allow_opts** %8, align 8
  %180 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 8
  %181 = load i32, i32* %5, align 4
  %182 = add nsw i32 %181, -1
  store i32 %182, i32* %5, align 4
  %183 = load i8**, i8*** %6, align 8
  %184 = getelementptr inbounds i8*, i8** %183, i32 1
  store i8** %184, i8*** %6, align 8
  %185 = load i32, i32* %5, align 4
  %186 = load i8**, i8*** %6, align 8
  %187 = load i64, i64* %7, align 8
  %188 = load %struct.allow_opts*, %struct.allow_opts** %8, align 8
  %189 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %188, i32 0, i32 10
  %190 = call i8* @munge_args(i32 %185, i8** %186, i64 %187, i32 2, i32* %189)
  %191 = load %struct.allow_opts*, %struct.allow_opts** %8, align 8
  %192 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %191, i32 0, i32 8
  store i8* %190, i8** %192, align 8
  br label %226

193:                                              ; preds = %170, %167, %164
  %194 = load i32, i32* %5, align 4
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %196, label %211

196:                                              ; preds = %193
  %197 = load i64, i64* %7, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %211, label %199

199:                                              ; preds = %196
  %200 = load i8*, i8** @B_TRUE, align 8
  %201 = load %struct.allow_opts*, %struct.allow_opts** %8, align 8
  %202 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %201, i32 0, i32 11
  store i8* %200, i8** %202, align 8
  %203 = load i8**, i8*** %6, align 8
  %204 = load i32, i32* %5, align 4
  %205 = sub nsw i32 %204, 1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8*, i8** %203, i64 %206
  %208 = load i8*, i8** %207, align 8
  %209 = load %struct.allow_opts*, %struct.allow_opts** %8, align 8
  %210 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %209, i32 0, i32 8
  store i8* %208, i8** %210, align 8
  br label %225

211:                                              ; preds = %196, %193
  %212 = load i32, i32* %5, align 4
  %213 = load i8**, i8*** %6, align 8
  %214 = load i64, i64* %7, align 8
  %215 = load %struct.allow_opts*, %struct.allow_opts** %8, align 8
  %216 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %215, i32 0, i32 10
  %217 = call i8* @munge_args(i32 %212, i8** %213, i64 %214, i32 3, i32* %216)
  %218 = load %struct.allow_opts*, %struct.allow_opts** %8, align 8
  %219 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %218, i32 0, i32 8
  store i8* %217, i8** %219, align 8
  %220 = load i8**, i8*** %6, align 8
  %221 = getelementptr inbounds i8*, i8** %220, i64 0
  %222 = load i8*, i8** %221, align 8
  %223 = load %struct.allow_opts*, %struct.allow_opts** %8, align 8
  %224 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %223, i32 0, i32 9
  store i8* %222, i8** %224, align 8
  br label %225

225:                                              ; preds = %211, %199
  br label %226

226:                                              ; preds = %225, %176
  br label %227

227:                                              ; preds = %226, %155
  br label %228

228:                                              ; preds = %227, %133
  br label %229

229:                                              ; preds = %228, %114
  %230 = load %struct.allow_opts*, %struct.allow_opts** %8, align 8
  %231 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %248, label %234

234:                                              ; preds = %229
  %235 = load %struct.allow_opts*, %struct.allow_opts** %8, align 8
  %236 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %235, i32 0, i32 6
  %237 = load i32, i32* %236, align 8
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %248, label %239

239:                                              ; preds = %234
  %240 = load i8*, i8** @B_TRUE, align 8
  %241 = ptrtoint i8* %240 to i32
  %242 = load %struct.allow_opts*, %struct.allow_opts** %8, align 8
  %243 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %242, i32 0, i32 5
  store i32 %241, i32* %243, align 4
  %244 = load i8*, i8** @B_TRUE, align 8
  %245 = ptrtoint i8* %244 to i32
  %246 = load %struct.allow_opts*, %struct.allow_opts** %8, align 8
  %247 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %246, i32 0, i32 6
  store i32 %245, i32* %247, align 8
  br label %248

248:                                              ; preds = %239, %234, %229
  ret void
}

declare dso_local i32 @allow_usage(i64, i8*, i32*) #1

declare dso_local i32* @gettext(i8*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i8* @munge_args(i32, i8**, i64, i32, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
